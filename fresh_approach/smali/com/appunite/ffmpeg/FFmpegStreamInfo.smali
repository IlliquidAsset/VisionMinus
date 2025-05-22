.class public Lcom/appunite/ffmpeg/FFmpegStreamInfo;
.super Ljava/lang/Object;
.source "FFmpegStreamInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;
    }
.end annotation


# static fields
.field private static sLocaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMediaType:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field private mMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->sLocaleMap:Ljava/util/Map;

    .line 34
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 35
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 36
    sget-object v3, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->sLocaleMap:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/util/Locale;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mMetadata:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "language"

    .line 67
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v1

    .line 70
    :cond_1
    sget-object v1, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->sLocaleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getMediaType()Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mMediaType:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getStreamNumber()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mStreamNumber:I

    return v0
.end method

.method setMediaTypeInternal(I)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->values()[Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mMediaType:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    return-void
.end method

.method public setMetadata(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mMetadata:Ljava/util/Map;

    return-void
.end method

.method setStreamNumber(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mStreamNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\n"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tmediaType: "

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mMediaType:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tlanguage: "

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tmetadata "

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo;->mMetadata:Ljava/util/Map;

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
