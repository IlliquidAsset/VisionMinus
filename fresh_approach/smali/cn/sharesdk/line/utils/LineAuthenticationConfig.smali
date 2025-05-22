.class public Lcn/sharesdk/line/utils/LineAuthenticationConfig;
.super Ljava/lang/Object;
.source "LineAuthenticationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/sharesdk/line/utils/LineAuthenticationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static a:I

.field private static b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;

.field private final f:Landroid/net/Uri;

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;

    invoke-direct {v0}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;-><init>()V

    sput-object v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x1

    .line 25
    sput v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->a:I

    const/4 v0, 0x2

    .line 26
    sput v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->c:Ljava/lang/String;

    .line 50
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->d:Landroid/net/Uri;

    .line 51
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->e:Landroid/net/Uri;

    .line 52
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->f:Landroid/net/Uri;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 54
    sget v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->a:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->g:Z

    .line 55
    sget v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->b:I

    and-int/2addr p1, v0

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->a(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->c:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->b(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->d:Landroid/net/Uri;

    .line 42
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->c(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->e:Landroid/net/Uri;

    .line 43
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->d(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->f:Landroid/net/Uri;

    .line 44
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->e(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->g:Z

    .line 45
    invoke-static {p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;->f(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;Lcn/sharesdk/line/utils/LineAuthenticationConfig$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/sharesdk/line/utils/LineAuthenticationConfig;-><init>(Lcn/sharesdk/line/utils/LineAuthenticationConfig$a;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    check-cast p1, Lcn/sharesdk/line/utils/LineAuthenticationConfig;

    .line 114
    iget-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->g:Z

    iget-boolean v2, p1, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->g:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 117
    :cond_2
    iget-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->h:Z

    iget-boolean v2, p1, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->h:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 120
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->c:Ljava/lang/String;

    iget-object v2, p1, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 123
    :cond_4
    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->d:Landroid/net/Uri;

    iget-object v2, p1, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 126
    :cond_5
    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->e:Landroid/net/Uri;

    iget-object v2, p1, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 129
    :cond_6
    iget-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->f:Landroid/net/Uri;

    iget-object p1, p1, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->f:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 134
    iget-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->h:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineAuthenticationConfig{channelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", openidDiscoveryDocumentUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apiBaseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", webLoginPageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLineAppAuthenticationDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEncryptorPreparationDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    iget-object v0, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget-boolean p2, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->g:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget p2, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->a:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p2, v0

    .line 66
    iget-boolean v1, p0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->h:Z

    if-eqz v1, :cond_1

    sget v0, Lcn/sharesdk/line/utils/LineAuthenticationConfig;->b:I

    :cond_1
    or-int/2addr p2, v0

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
