project export

!git add .
!git commit -m "Base release"

!git branch -M main
!git push -u origin main
!git checkout -B base-release
!git push -u origin base-release

--exit
