.class Lcom/powervision/media/utils/MediaLibDataManager$SingleHelper;
.super Ljava/lang/Object;
.source "MediaLibDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/utils/MediaLibDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHelper"
.end annotation


# static fields
.field public static final instance:Lcom/powervision/media/utils/MediaLibDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/powervision/media/utils/MediaLibDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/media/utils/MediaLibDataManager;-><init>(Lcom/powervision/media/utils/MediaLibDataManager$1;)V

    sput-object v0, Lcom/powervision/media/utils/MediaLibDataManager$SingleHelper;->instance:Lcom/powervision/media/utils/MediaLibDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
