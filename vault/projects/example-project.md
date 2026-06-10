---
title: Example Project – Real-time Tracking Platform
status: active
priority: high
date: 2026-06-10
tags: [project, example, gps]
---

# Example Project – Real-time Tracking Platform

## Business Context

A real-time GPS tracking platform for endurance events. Riders must be able to start, ride, and finish even with no mobile signal.

## Key Links

- GitHub: https://github.com/example/tracking-platform
- Local path: `/Users/example/projects/tracking-platform`
- Staging: https://staging.example.com

## Stack

- Frontend: React 19, Vite, TypeScript, Mapbox
- Backend: Node.js, Fastify, Socket.IO
- Data: Postgres + PostGIS, Redis

## Non-negotiables

- Offline start/finish must always work
- No auto-logout due to network issues
- Tracking continues until the rider explicitly ends it

## Current Focus

Completing the organiser dashboard and participant management flow.

## Next Action

Review the staging plan and update this note with decisions.