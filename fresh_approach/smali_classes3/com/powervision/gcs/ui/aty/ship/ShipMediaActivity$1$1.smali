.class Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1$1;
.super Ljava/lang/Object;
.source "ShipMediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;->getFileCount(ILcom/powervision/localhttp/entity/BaseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->getFileCountHttp()V

    return-void
.end method
