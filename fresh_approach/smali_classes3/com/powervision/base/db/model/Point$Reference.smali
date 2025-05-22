.class Lcom/powervision/base/db/model/Point$Reference;
.super Ljava/lang/Object;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/db/model/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/db/model/Point;

.field private wkid:Ljava/lang/Double;


# direct methods
.method private constructor <init>(Lcom/powervision/base/db/model/Point;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/powervision/base/db/model/Point$Reference;->this$0:Lcom/powervision/base/db/model/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWkid()Ljava/lang/Double;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/powervision/base/db/model/Point$Reference;->wkid:Ljava/lang/Double;

    return-object v0
.end method

.method public setWkid(Ljava/lang/Double;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/powervision/base/db/model/Point$Reference;->wkid:Ljava/lang/Double;

    return-void
.end method
