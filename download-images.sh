#!/bin/bash
# ============================================================
# England Boys Trip 2026 — Gallery Image Downloader
# Run this script once locally to download all course photos
# into the correct folder structure for GitHub Pages.
#
# Usage:
#   chmod +x download-images.sh
#   ./download-images.sh
# ============================================================

UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

mkdir -p images/hillside images/lytham images/liverpool images/westlancs images/sa images/birkdale

echo "📥 Downloading Hillside images..."
curl -sL -A "$UA" -H "Referer: https://www.hillside-golfclub.co.uk/" \
  "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-10-Beyond-hillside-10th-DJI_0350-Pano-1200x1200.jpg" \
  -o images/hillside/hole-10-panorama.jpg
curl -sL -A "$UA" -H "Referer: https://www.hillside-golfclub.co.uk/" \
  "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-2-DJI_0934-1200x1200.jpg" \
  -o images/hillside/hole-2.jpg
curl -sL -A "$UA" -H "Referer: https://www.hillside-golfclub.co.uk/" \
  "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-3-DJI_0352-1200x1200.jpg" \
  -o images/hillside/hole-3.jpg
curl -sL -A "$UA" -H "Referer: https://www.hillside-golfclub.co.uk/" \
  "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/03/hole-4-DJI_0355-1200x1200.jpg" \
  -o images/hillside/hole-4.jpg
curl -sL -A "$UA" -H "Referer: https://www.hillside-golfclub.co.uk/" \
  "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/02/visitors-1200x1200.jpg" \
  -o images/hillside/clubhouse.jpg
curl -sL -A "$UA" -H "Referer: https://www.hillside-golfclub.co.uk/" \
  "https://www.hillside-golfclub.co.uk/wp-content/uploads/2023/04/IMG_4915-1200x1200.jpg" \
  -o images/hillside/course.jpg

echo "📥 Downloading Royal Lytham images..."
curl -sL -A "$UA" -H "Referer: https://www.royallytham.org/" \
  "https://www.royallytham.org/wp-content/uploads/2021/03/home-page-2-_141st_Open_C-scaled-1400x1000.jpg" \
  -o images/lytham/open.jpg
curl -sL -A "$UA" -H "Referer: https://www.royallytham.org/" \
  "https://www.royallytham.org/wp-content/uploads/2021/03/hole-4-_MG_3581-scaled-454x575.jpg" \
  -o images/lytham/hole-4.jpg
curl -sL -A "$UA" -H "Referer: https://www.royallytham.org/" \
  "https://www.royallytham.org/wp-content/uploads/2021/05/cropped-the-senior-open-2019-454x575.jpg" \
  -o images/lytham/senior-open.jpg
curl -sL -A "$UA" -H "Referer: https://www.royallytham.org/" \
  "https://www.royallytham.org/wp-content/uploads/2021/02/cropped-dormy-_MG_3180-3-454x575.jpg" \
  -o images/lytham/clubhouse.jpg
curl -sL -A "$UA" -H "Referer: https://www.royallytham.org/" \
  "https://www.royallytham.org/wp-content/uploads/2021/02/els-cropped-_141st_Open-454x575.jpg" \
  -o images/lytham/els.jpg

echo "📥 Downloading Royal Liverpool images..."
curl -sL -A "$UA" -H "Referer: https://www.royal-liverpool-golf.com/" \
  "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/Hoylake-Clubhouse-001.jpg_aa01390ab2ee581ea317d15550b65e1f.jpg" \
  -o images/liverpool/clubhouse.jpg
curl -sL -A "$UA" -H "Referer: https://www.royal-liverpool-golf.com/" \
  "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/0L4A0091_mNAGratB.jpg_7fa6c968a6939b1fb8f1309a0e8b1c12.jpg" \
  -o images/liverpool/course.jpg
curl -sL -A "$UA" -H "Referer: https://www.royal-liverpool-golf.com/" \
  "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/Tiger-Woods.jpg_3d2ef0aaf0d7e9b71ef4ac2d9d8a7263.jpg" \
  -o images/liverpool/tiger.jpg
curl -sL -A "$UA" -H "Referer: https://www.royal-liverpool-golf.com/" \
  "https://www.royal-liverpool-golf.com/app/libraries/resizeCrop/cache/0505BobbyJones2b(2).jpg_dbfb0fc8bbc05790a9a6560bd1c7f32c.jpg" \
  -o "images/liverpool/bobby-jones.jpg"

echo "📥 Downloading West Lancashire images..."
curl -sL -A "$UA" -H "Referer: https://www.westlancashiregolf.co.uk/" \
  "https://www.westlancashiregolf.co.uk/wp-content/uploads/2023/02/hero-3_V6A3827-554x700.jpg" \
  -o images/westlancs/course.jpg
curl -sL -A "$UA" -H "Referer: https://www.westlancashiregolf.co.uk/" \
  "https://www.westlancashiregolf.co.uk/wp-content/uploads/2022/11/RAY_5167-554x700.jpg" \
  -o images/westlancs/view.jpg
curl -sL -A "$UA" -H "Referer: https://www.westlancashiregolf.co.uk/" \
  "https://www.westlancashiregolf.co.uk/wp-content/uploads/2023/02/golfer-554x700.jpg" \
  -o images/westlancs/golfer.jpg

echo "📥 Downloading Southport & Ainsdale images..."
curl -sL -A "$UA" -H "Referer: https://www.sandagolfclub.co.uk/" \
  "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-5th-DJI_0028-HDR-900x525.jpg" \
  -o images/sa/5th-hole.jpg
curl -sL -A "$UA" -H "Referer: https://www.sandagolfclub.co.uk/" \
  "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-4th-DJI_0523-Edit-900x525.jpg" \
  -o images/sa/4th-hole.jpg
curl -sL -A "$UA" -H "Referer: https://www.sandagolfclub.co.uk/" \
  "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-5th-DJI_0534-HDR-900x525.jpg" \
  -o images/sa/5th-hole-2.jpg
curl -sL -A "$UA" -H "Referer: https://www.sandagolfclub.co.uk/" \
  "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-6th-DJI_0529-Edit-900x525.jpg" \
  -o images/sa/6th-hole.jpg
curl -sL -A "$UA" -H "Referer: https://www.sandagolfclub.co.uk/" \
  "https://www.sandagolfclub.co.uk/wp-content/uploads/2023/07/SA-clubhouse-DJI_0402-HDR-554x700.jpg" \
  -o images/sa/clubhouse.jpg

echo "📥 Downloading Royal Birkdale images..."
# Club website
curl -sL -A "$UA" -H "Referer: https://royalbirkdale.com/" \
  "https://royalbirkdale.com/wp-content/uploads/2025/05/RB-The-Open-2.jpg" \
  -o images/birkdale/the-open.jpg
# Wikimedia Commons (freely licensed)
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/a/ad/Royal_Birkdale_Clubhouse_and_18th_Green._-_geograph.org.uk_-_888476.jpg" \
  -o images/birkdale/clubhouse-18th.jpg
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/c/c7/Royal_Birkdale_from_the_dunes_-_geograph.org.uk_-_874184.jpg" \
  -o images/birkdale/from-the-dunes.jpg
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/2/2d/Hole_1_%285942513377%29.jpg" \
  -o images/birkdale/hole-1.jpg
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/6/61/Hole_4_%285943432768%29.jpg" \
  -o images/birkdale/hole-4.jpg
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/9/9c/Hole_5_%285942879205%29.jpg" \
  -o images/birkdale/hole-5.jpg
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/0/09/14th_Green_%289367824589%29.jpg" \
  -o images/birkdale/14th-green.jpg
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/1/1f/Hole_15_%285942733241%29.jpg" \
  -o images/birkdale/hole-15.jpg
curl -sL -A "$UA" \
  "https://upload.wikimedia.org/wikipedia/commons/6/62/2nd_Green_%289367945527%29.jpg" \
  -o images/birkdale/2nd-green.jpg

echo ""
echo "✅ Done! Check your images/ folder."
echo ""
echo "Folder structure for GitHub:"
echo "  images/"
echo "    hillside/   → 6 photos"
echo "    lytham/     → 5 photos"
echo "    liverpool/  → 4 photos"
echo "    westlancs/  → 3 photos"
echo "    sa/         → 5 photos"
echo "    birkdale/   → 9 photos"
echo ""
echo "Upload to GitHub alongside index.html, games.html and gallery.html."
