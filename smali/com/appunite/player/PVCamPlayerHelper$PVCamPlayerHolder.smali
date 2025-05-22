.class Lcom/appunite/player/PVCamPlayerHelper$PVCamPlayerHolder;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/player/PVCamPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PVCamPlayerHolder"
.end annotation


# static fields
.field private static sHelper:Lcom/appunite/player/PVCamPlayerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/appunite/player/PVCamPlayerHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appunite/player/PVCamPlayerHelper;-><init>(Lcom/appunite/player/PVCamPlayerHelper$1;)V

    sput-object v0, Lcom/appunite/player/PVCamPlayerHelper$PVCamPlayerHolder;->sHelper:Lcom/appunite/player/PVCamPlayerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/appunite/player/PVCamPlayerHelper;
    .locals 1

    .line 30
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelper$PVCamPlayerHolder;->sHelper:Lcom/appunite/player/PVCamPlayerHelper;

    return-object v0
.end method
