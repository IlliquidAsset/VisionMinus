.class Lcom/powervision/gcs/manager/PVW4SailModelManager$Holder;
.super Ljava/lang/Object;
.source "PVW4SailModelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4SailModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/powervision/gcs/manager/PVW4SailModelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/powervision/gcs/manager/PVW4SailModelManager;

    invoke-direct {v0}, Lcom/powervision/gcs/manager/PVW4SailModelManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/manager/PVW4SailModelManager$Holder;->instance:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/powervision/gcs/manager/PVW4SailModelManager;
    .locals 1

    .line 24
    sget-object v0, Lcom/powervision/gcs/manager/PVW4SailModelManager$Holder;->instance:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    return-object v0
.end method
