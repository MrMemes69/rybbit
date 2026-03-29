ALTER TABLE "invitation" ADD COLUMN "teamId" text;--> statement-breakpoint
ALTER TABLE "invitation" ADD CONSTRAINT "invitation_teamId_team_id_fk" FOREIGN KEY ("teamId") REFERENCES "public"."team"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "invitation" DROP COLUMN "team_ids";