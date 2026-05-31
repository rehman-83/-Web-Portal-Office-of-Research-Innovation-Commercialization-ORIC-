# ORIC - Office of Research Innovation Commercialization Web Portal

A comprehensive web portal for managing research, innovation, and commercialization activities. This project combines a modern ASP.NET Web Forms frontend with a robust .NET 8 REST API backend.

## 📋 Features

- **User Authentication & Authorization** - Secure login system with JWT token support
- **Dashboard** - Centralized view for research metrics and activities
- **Research Management** - Track approved supervisors, proposals, and research support
- **Publications & Downloads** - Manage and distribute research publications
- **News & Announcements** - Keep stakeholders updated with latest developments
- **Gallery Management** - Showcase research facilities and achievements
- **File Management** - Secure file upload and download capabilities
- **Admin Panel** - Comprehensive administrative tools for content management
- **Responsive Design** - Bootstrap-based responsive UI

## 🏗️ Project Structure

```
ORIC1/
├── ORIC_API/                    # .NET 8 REST API Backend
│   ├── Controllers/             # API endpoints
│   │   ├── AnnouncementsController.cs
│   │   ├── AuthController.cs
│   │   ├── DashboardController.cs
│   │   ├── DownloadsController.cs
│   │   ├── GalleryController.cs
│   │   ├── NewsController.cs
│   │   ├── PublicationsController.cs
│   │   └── UploadController.cs
│   ├── Data/                    # Database context
│   │   ├── ApplicationDbContext.cs
│   │   └── DbSeeder.cs
│   ├── DTOs/                    # Data Transfer Objects
│   │   ├── Auth/
│   │   ├── Cms/
│   │   ├── Dashboard/
│   │   └── News/
│   ├── Models/                  # Domain models
│   ├── Services/                # Business logic
│   │   ├── FileValidationService.cs
│   │   └── JwtTokenService.cs
│   ├── Program.cs               # App startup configuration
│   ├── appsettings.json         # Configuration
│   └── ORIC_API.csproj          # Project file
│
├── public/                      # ASP.NET Web Forms Frontend
│   ├── Default.aspx             # Home page
│   ├── admin/                   # Admin pages
│   │   ├── Dashboard.aspx
│   │   ├── Login.aspx
│   │   ├── Announcements.aspx
│   │   ├── News.aspx
│   │   ├── Publications.aspx
│   │   ├── Downloads.aspx
│   │   ├── Galleries.aspx
│   │   └── Newsletters.aspx
│   ├── about/                   # About pages
│   ├── research/                # Research pages
│   ├── media/                   # Media pages
│   ├── commercialization/       # Commercialization pages
│   ├── Hi-Tech/                 # Hi-Tech pages
│   ├── assets/                  # Static resources
│   │   ├── css/
│   │   ├── js/
│   │   ├── img/
│   │   └── files/
│   └── _includes/               # User controls
│
├── css/                         # Shared CSS files
├── ORIC1.sln                    # Visual Studio solution
├── Web.config                   # Web configuration
└── README.md                    # This file
```

## 🛠️ Technology Stack

### Backend

- **.NET 8** - Latest .NET framework
- **ASP.NET Core** - Web API framework
- **Entity Framework Core** - ORM for data access
- **JWT Authentication** - Secure token-based authentication
- **SQL Server** - Database (configured in appsettings.json)

### Frontend

- **ASP.NET Web Forms** - Server-side web framework
- **Bootstrap 4.4.1** - Responsive CSS framework
- **jQuery** - JavaScript library
- **HTML5/CSS3** - Modern web standards

## 📦 Prerequisites

- **Visual Studio 2022** or later
- **.NET 8 SDK** installed
- **SQL Server** (Express or full)
- **IIS** (for deployment)

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/rehman-83/-Web-Portal-Office-of-Research-Innovation-Commercialization-ORIC-.git
cd ORIC1
```

### 2. Configure the Database

Edit `ORIC_API/appsettings.json` and update the connection string:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=YOUR_SERVER;Database=ORIC_DB;Trusted_Connection=true;"
  }
}
```

### 3. Build and Restore Dependencies

```bash
dotnet restore ORIC_API/ORIC_API.csproj
dotnet build ORIC_API/ORIC_API.csproj
```

### 4. Run Database Migrations

```bash
dotnet ef database update --project ORIC_API/ORIC_API.csproj
```

### 5. Run the Application

**Development Mode:**

```bash
dotnet run --project ORIC_API/ORIC_API.csproj
```

Then open in Visual Studio and run the Web Forms project, or navigate to `http://localhost:5000`

**With Visual Studio:**

- Open `ORIC1.sln` in Visual Studio 2022
- Set startup project to the Web Forms application
- Press F5 to run

## 📝 API Documentation

The API provides RESTful endpoints for all major operations:

### Authentication

- `POST /api/auth/login` - User login
- `POST /api/auth/logout` - User logout
- `POST /api/auth/register` - Register new user

### Dashboard

- `GET /api/dashboard` - Get dashboard data

### News

- `GET /api/news` - Get all news items
- `POST /api/news` - Create news item
- `PUT /api/news/{id}` - Update news item
- `DELETE /api/news/{id}` - Delete news item

### Announcements

- `GET /api/announcements` - Get all announcements
- `POST /api/announcements` - Create announcement
- `PUT /api/announcements/{id}` - Update announcement
- `DELETE /api/announcements/{id}` - Delete announcement

### Publications

- `GET /api/publications` - Get all publications
- `POST /api/publications` - Create publication
- `PUT /api/publications/{id}` - Update publication
- `DELETE /api/publications/{id}` - Delete publication

### Downloads

- `GET /api/downloads` - Get all downloads
- `POST /api/downloads` - Create download
- `PUT /api/downloads/{id}` - Update download
- `DELETE /api/downloads/{id}` - Delete download

### Gallery

- `GET /api/gallery` - Get all gallery items
- `POST /api/gallery` - Create gallery item
- `PUT /api/gallery/{id}` - Update gallery item
- `DELETE /api/gallery/{id}` - Delete gallery item

### Uploads

- `POST /api/upload` - Upload files
- `POST /api/upload/multiple` - Upload multiple files

## 🔐 Security Features

- **JWT Authentication** - Secure token-based authentication
- **File Validation** - Server-side file type and size validation
- **Password Hashing** - Secure password storage
- **CORS Configuration** - Cross-origin request handling
- **Admin Authentication** - Protected admin endpoints

## 📂 File Structure Details

### Database Models

- `AdminUser` - Administrator accounts
- `NewsItem` - News articles
- `AnnouncementItem` - System announcements
- `PublicationItem` - Research publications
- `DownloadItem` - Downloadable resources
- `GalleryItem` - Photo gallery items

### DTOs (Data Transfer Objects)

- `LoginRequestDto` - User login credentials
- `LoginResponseDto` - Authentication response with token
- Various CMS, Dashboard, and News DTOs

## 🧪 Testing

Run unit tests:

```bash
dotnet test ORIC_API/ORIC_API.csproj
```

## 📤 Deployment

### IIS Deployment

1. Publish the application:

```bash
dotnet publish -c Release
```

2. Create IIS site pointing to published folder
3. Configure connection string in `web.config`
4. Set appropriate file/folder permissions

### Docker Deployment

Create a Dockerfile in the root directory and build the image:

```bash
docker build -t oric-portal .
docker run -p 80:80 oric-portal
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👥 Authors

- **Rehman** - Initial work

## 📧 Contact & Support

For issues, feature requests, or support, please open an issue on GitHub.

## 🙏 Acknowledgments

- Bootstrap team for responsive CSS framework
- .NET team for excellent framework
- All contributors who have helped with this project

---

**Last Updated:** May 31, 2026
