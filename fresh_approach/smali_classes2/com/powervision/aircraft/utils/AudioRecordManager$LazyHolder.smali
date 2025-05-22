.class Lcom/powervision/aircraft/utils/AudioRecordManager$LazyHolder;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/utils/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static mInstance:Lcom/powervision/aircraft/utils/AudioRecordManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/powervision/aircraft/utils/AudioRecordManager;

    invoke-direct {v0}, Lcom/powervision/aircraft/utils/AudioRecordManager;-><init>()V

    sput-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager$LazyHolder;->mInstance:Lcom/powervision/aircraft/utils/AudioRecordManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/powervision/aircraft/utils/AudioRecordManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/powervision/aircraft/utils/AudioRecordManager$LazyHolder;->mInstance:Lcom/powervision/aircraft/utils/AudioRecordManager;

    return-object v0
.end method
