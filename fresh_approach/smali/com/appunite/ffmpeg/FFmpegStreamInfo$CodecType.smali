.class public final enum Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;
.super Ljava/lang/Enum;
.source "FFmpegStreamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/ffmpeg/FFmpegStreamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field public static final enum ATTACHMENT:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field public static final enum AUDIO:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field public static final enum DATA:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field public static final enum NB:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field public static final enum SUBTITLE:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field public static final enum UNKNOWN:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

.field public static final enum VIDEO:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->UNKNOWN:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    new-instance v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const-string v1, "AUDIO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->AUDIO:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    new-instance v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->VIDEO:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    new-instance v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const-string v1, "SUBTITLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->SUBTITLE:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    new-instance v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const-string v1, "ATTACHMENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->ATTACHMENT:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    new-instance v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const-string v1, "NB"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->NB:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    new-instance v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const-string v1, "DATA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->DATA:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    .line 26
    sget-object v9, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->UNKNOWN:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    aput-object v9, v1, v2

    sget-object v2, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->AUDIO:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->VIDEO:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->SUBTITLE:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->ATTACHMENT:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->NB:Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->$VALUES:[Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;
    .locals 1

    .line 26
    const-class v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    return-object p0
.end method

.method public static values()[Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;
    .locals 1

    .line 26
    sget-object v0, Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->$VALUES:[Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    invoke-virtual {v0}, [Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appunite/ffmpeg/FFmpegStreamInfo$CodecType;

    return-object v0
.end method
