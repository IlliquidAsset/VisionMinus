.class Lcom/powervision/handheld/utils/AudioRecordManager$LazyHolder;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/utils/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static mInstance:Lcom/powervision/handheld/utils/AudioRecordManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/powervision/handheld/utils/AudioRecordManager;

    invoke-direct {v0}, Lcom/powervision/handheld/utils/AudioRecordManager;-><init>()V

    sput-object v0, Lcom/powervision/handheld/utils/AudioRecordManager$LazyHolder;->mInstance:Lcom/powervision/handheld/utils/AudioRecordManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/powervision/handheld/utils/AudioRecordManager;
    .locals 1

    .line 56
    sget-object v0, Lcom/powervision/handheld/utils/AudioRecordManager$LazyHolder;->mInstance:Lcom/powervision/handheld/utils/AudioRecordManager;

    return-object v0
.end method
