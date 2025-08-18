-- 1. Create SQLcl Project (hardcoded)
project init -name SAMPLE_N -schemas WKSP_EBS2CLOUD_MIGRATION

-- 2. Initialize Git repository
!git init --initial-branch=main
!git add .
!git commit -m "initializing repository with default project SAMPLE_N files"

-- 3. Ask for Git remote URL
ACCEPT REMOTE_URL CHAR PROMPT 'Enter Git remote URL: '
!git remote add origin &REMOTE_URL

-- 4. Create base-release branch
!git checkout -b base-release

-- 5. Export DB Objects + APEX Apps
project export

-- 6. Commit base release into Git
!git add .
!git commit -m "Base release"

-- 7. Push branches to remote
!git push -u origin main
!git push -u origin base-release

-- exit
