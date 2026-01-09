import { drizzle } from "drizzle-orm/node-postgres";
import pg from "pg";
import * as schema from "./schema";
import dotenv from "dotenv";
import path from "path";

// Force load local .env to override any conflicting environment variables
dotenv.config({ path: path.resolve(process.cwd(), ".env"), override: true });

const pool = new pg.Pool({
  connectionString: process.env.DATABASE_URL,
});

export const db = drizzle(pool, { schema });
