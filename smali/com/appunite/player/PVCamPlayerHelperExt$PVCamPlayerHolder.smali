.class Lcom/appunite/player/PVCamPlayerHelperExt$PVCamPlayerHolder;
.super Ljava/lang/Object;
.source "PVCamPlayerHelperExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appunite/player/PVCamPlayerHelperExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PVCamPlayerHolder"
.end annotation


# static fields
.field private static sHelper:Lcom/appunite/player/PVCamPlayerHelperExt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/appunite/player/PVCamPlayerHelperExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appunite/player/PVCamPlayerHelperExt;-><init>(Lcom/appunite/player/PVCamPlayerHelperExt$1;)V

    sput-object v0, Lcom/appunite/player/PVCamPlayerHelperExt$PVCamPlayerHolder;->sHelper:Lcom/appunite/player/PVCamPlayerHelperExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/appunite/player/PVCamPlayerHelperExt;
    .locals 1

    .line 62
    sget-object v0, Lcom/appunite/player/PVCamPlayerHelperExt$PVCamPlayerHolder;->sHelper:Lcom/appunite/player/PVCamPlayerHelperExt;

    return-object v0
.end method
