create profile iot_profil limit
  sessions_per_user 3               -- a maximum of 3 simultaneous sessions allowed per user
  cpu_per_call 35                   -- a system call cannot consume more than 35 seconds of cpu time
  connect_time 5400                 -- a session cannot exceed 90 minutes (5400 seconds)
  logical_reads_per_call 1200       -- a system call cannot read more than 1200 data blocks
  private_sga 25k                   -- each session cannot allocate more than 25 kb of sga memory
  idle_time 30                      -- maximum inactivity time of 30 minutes before the session is disconnected
  failed_login_attempts 5           -- 5 failed login attempts before the account is locked
  password_life_time 50             -- the password is valid for 50 days
  password_reuse_time 40            -- a password cannot be reused until 40 days have passed
  password_grace_time 5             -- 5 days of grace period before the password must be changed
  password_lock_time 1/24;          -- access is denied for 1 hour after reaching 5 failed login attempts

