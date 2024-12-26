create profile C##IOT_Profil limit
  sessions_per_user 3               -- 3 sessions simultanees autorisees par utilisateur
  cpu_per_call 35                   -- Un appel systeme ne peut pas consommer plus de 35 secondes de CPU
  connect_time 5400                 -- La session ne peut exceder 90 minutes (5400 secondes)
  logical_reads_per_call 1200       -- Un appel systeme ne peut lire plus de 1200 blocs de donnees
  private_sga 25k                   -- Chaque session ne peut allouer plus de 25 Ko en memoire SGA 
  idle_time 30                      -- I'inactivite maximale de 30 minutes avant deconnexion de la session
  failed_login_attempts 5           -- 5 tentatives de connexion echouees avant verrouillage du compte
  password_life_time 50             -- Le mot de passe est valable pendant 50 jours
  password_reuse_time 40            -- Il faut attendre 40 jours avant qu'un mot de passe puisse etre reutilise
  password_grace_time 5             -- 5 jours de periode de grace avant que le mot de passe doive etre change
  password_lock_time 1/24;          -- 1 jour d'interdiction d'acces apres avoir atteint 5 tentatives de connexion echouees
