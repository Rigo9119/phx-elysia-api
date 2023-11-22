import { Elysia } from "elysia";

export const payment_plan = (app: Elysia) =>
  app.group("/payment_plan", (app) =>
    app.get("/info", () => {
      return "ruta para retornar la info de la proyección";
    })
  );
