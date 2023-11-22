import { Elysia } from "elysia";

export const user = (app: Elysia) =>
  app.group("/user", (app) =>
    app.get("/profile", () => {
      return "ruta para dar info del usuario";
    })
  );
