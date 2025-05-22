.class Lcom/powervision/opensource/geo/ConditionMapInterface$5;
.super Ljava/lang/Object;
.source "ConditionMapInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/opensource/geo/ConditionMapInterface;->stopGeoMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;


# direct methods
.method constructor <init>(Lcom/powervision/opensource/geo/ConditionMapInterface;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$5;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/powervision/opensource/geo/ConditionMapInterface$5;->this$0:Lcom/powervision/opensource/geo/ConditionMapInterface;

    invoke-virtual {v0}, Lcom/powervision/opensource/geo/ConditionMapInterface;->deleteAllFish()V

    return-void
.end method
