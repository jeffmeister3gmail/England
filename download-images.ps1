# England Boys Trip 2026 - Gallery Image Downloader (Windows)
# Run in PowerShell after: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$folders = @("images\hillside","images\lytham","images\liverpool","images\westlancs","images\sa","images\birkdale")
foreach ($f in $folders) { New-Item -ItemType Directory -Force -Path $f | Out-Null }

function Download {
    param($url, $path, $referer)
    try {
        $h = @{ "User-Agent" = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" }
        if ($referer) { $h["Referer"] = $referer }
        Invoke-WebRequest -Uri $url -Headers $h -OutFile $path -ErrorAction Stop
        Write-Host "  OK $path" -ForegroundColor Green
    } catch {
        Write-Host "  FAILED $path" -ForegroundColor Red
    }
}

Write-Host "Hillside Golf Club..." -ForegroundColor Cyan
Download "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-10-Beyond-hillside-10th-DJI_0350-Pano-1200x1200.jpg" "images\hillside\hole-10-panorama.jpg" "https://www.hillside-golfclub.co.uk/"
Download "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-2-DJI_0934-1200x1200.jpg" "images\hillside\hole-2.jpg" "https://www.hillside-golfclub.co.uk/"
Download "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-3-DJI_0352-1200x1200.jpg" "images\hillside\hole-3.jpg" "https://www.hillside-golfclub.co.uk/"
Download "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-4-DJI_0355-1200x1200.jpg" "images\hillside\hole-4.jpg" "https://www.hillside-golfclub.co.uk/"
Download "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/02/visitors-1200x1200.jpg" "images\hillside\clubhouse.jpg" "https://www.hillside-golfclub.co.uk/"
Download "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/04/IMG_4915-1200x1200.jpg" "images\hillside\course.jpg" "https://www.hillside-golfclub.co.uk/"

Write-Host "Royal Lytham..." -ForegroundColor Cyan
Download "https://www.royallytham.org/wp-content/uploads/2021/03/home-page-2-_141st_Open_C-scaled-1400x1000.jpg" "images\lytham\open.jpg" "https://www.royallytham.org/"
Download "https://www.royallytham.org/wp-content/uploads/2021/03/hole-4-_MG_3581-scaled-454x575.jpg" "images\lytham\hole-4.jpg" "https://www.royallytham.org/"
Download "https://www.royallytham.org/wp-content/uploads/2021/05/cropped-the-senior-open-2019-454x575.jpg" "images\lytham\senior-open.jpg" "https://www.royallytham.org/"
Download "https://www.royallytham.org/wp-content/uploads/2021/02/cropped-dormy-_MG_3180-3-454x575.jpg" "images\lytham\clubhouse.jpg" "https://www.royallytham.org/"
Download "https://www.royallytham.org/wp-content/uploads/2021/02/els-cropped-_141st_Open-454x575.jpg" "images\lytham\els.jpg" "https://www.royallytham.org/"

Write-Host "Royal Liverpool..." -ForegroundColor Cyan
Download "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/Hoylake-Clubhouse-001.jpg_aa01390ab2ee581ea317d15550b65e1f.jpg" "images\liverpool\clubhouse.jpg" "https://www.royal-liverpool-golf.com/"
Download "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/0L4A0091_mNAGratB.jpg_7fa6c968a6939b1fb8f1309a0e8b1c12.jpg" "images\liverpool\course.jpg" "https://www.royal-liverpool-golf.com/"
Download "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/Tiger-Woods.jpg_3d2ef0aaf0d7e9b71ef4ac2d9d8a7263.jpg" "images\liverpool\tiger.jpg" "https://www.royal-liverpool-golf.com/"
Download "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/0505BobbyJones2b(2).jpg_dbfb0fc8bbc05790a9a6560bd1c7f32c.jpg" "images\liverpool\bobby-jones.jpg" "https://www.royal-liverpool-golf.com/"

Write-Host "West Lancashire..." -ForegroundColor Cyan
Download "https://www.westlancashiregolf.co.uk/wp-content/uploads/2023/02/hero-3_V6A3827-554x700.jpg" "images\westlancs\course.jpg" "https://www.westlancashiregolf.co.uk/"
Download "https://www.westlancashiregolf.co.uk/wp-content/uploads/2022/11/RAY_5167-554x700.jpg" "images\westlancs\view.jpg" "https://www.westlancashiregolf.co.uk/"
Download "https://www.westlancashiregolf.co.uk/wp-content/uploads/2023/02/golfer-554x700.jpg" "images\westlancs\golfer.jpg" "https://www.westlancashiregolf.co.uk/"

Write-Host "Southport and Ainsdale..." -ForegroundColor Cyan
Download "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-5th-DJI_0028-HDR-900x525.jpg" "images\sa\5th-hole.jpg" "https://www.sandagolfclub.co.uk/"
Download "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-4th-DJI_0523-Edit-900x525.jpg" "images\sa\4th-hole.jpg" "https://www.sandagolfclub.co.uk/"
Download "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-5th-DJI_0534-HDR-900x525.jpg" "images\sa\5th-hole-2.jpg" "https://www.sandagolfclub.co.uk/"
Download "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-6th-DJI_0529-Edit-900x525.jpg" "images\sa\6th-hole.jpg" "https://www.sandagolfclub.co.uk/"
Download "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-clubhouse-DJI_0402-HDR-554x700.jpg" "images\sa\clubhouse.jpg" "https://www.sandagolfclub.co.uk/"

Write-Host "Royal Birkdale (Wikimedia Commons - freely licensed)..." -ForegroundColor Cyan
Download "https://upload.wikimedia.org/wikipedia/commons/1/12/Royal_Birkdale_Golf_Club_-_geograph.org.uk_-_81329.jpg" "images\birkdale\the-open.jpg" ""
Download "https://upload.wikimedia.org/wikipedia/commons/a/ad/Royal_Birkdale_Clubhouse_and_18th_Green._-_geograph.org.uk_-_888476.jpg" "images\birkdale\clubhouse-18th.jpg" ""
Download "https://upload.wikimedia.org/wikipedia/commons/c/c7/Royal_Birkdale_from_the_dunes_-_geograph.org.uk_-_874184.jpg" "images\birkdale\from-the-dunes.jpg" ""
Download "https://upload.wikimedia.org/wikipedia/commons/6/62/Royal_Birkdale_-_geograph.org.uk_-_874236.jpg" "images\birkdale\hole-1.jpg" ""

Write-Host ""
Write-Host "Done! Upload the images folder to GitHub alongside your HTML files." -ForegroundColor Green
