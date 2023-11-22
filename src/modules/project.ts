import { Elysia } from "elysia";

export const project = (app: Elysia) =>
  app.group("/project", (app) =>
    app
      .get("/info", () => {
        return "ruta para retornar info del proyecto";
      })
      .post("/create", () => {
        return "ruta para crear un proyecto";
      })
      .post("/sell", () => {
        return "ruta para vender proyecto";
      })
      .post("/finish", () => {
        return "ruta para terminar proyecto";
      })
  );
