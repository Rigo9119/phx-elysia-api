import { Elysia } from "elysia";
import { supabase } from "../libs/supabase";

export const auth = (app: Elysia) =>
  app.group("/auth", (app) =>
    app
      .post("/sign-up", async ({ body }: any) => {
        const { data, error } = await supabase.auth.signUp(body)
        if(error) return error
        console.log(data.user)
        return "ruta para crear usuario en la app";
      })
      .post("/sign-in", async ({ body }: any ) => {
        const { data, error } = await supabase.auth.signInWithPassword(body)
        if(error) return error
        console.log(data.user)
        return "ruta para logearse en la app";
      })
      .post("/reset-password", () => {
        return "ruta para resetear la contraseña"
      })
  );
