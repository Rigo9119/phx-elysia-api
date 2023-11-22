import { Elysia } from "elysia";

export const statements = (app: Elysia) =>
  app.group("/statements", () =>
    app
      .get("/info", () => {
        return "rutan para retornar la info";
      })
      .post("/pay", () => {
        return "ruta para pagar mensualidad";
      })
  );
