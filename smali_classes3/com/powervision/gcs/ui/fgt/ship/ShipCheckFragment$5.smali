.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "ShipCheckFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getSDState(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4GetSDState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GB"

    const-string v1, ""

    const-string v2, "MB"

    const-string v3, "/"

    .line 336
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getSDState(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 337
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 338
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4GetSDState;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4GetSDState;->sdstate:Ljava/lang/String;

    const-string v4, "SDOK"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    :try_start_0
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4GetSDState;

    iget-object p1, p1, Lcom/powervision/localhttp/entity/PVW4GetSDState;->total:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 342
    iget-object v4, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v4, Lcom/powervision/localhttp/entity/PVW4GetSDState;

    iget-object v4, v4, Lcom/powervision/localhttp/entity/PVW4GetSDState;->used:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr p1, v4

    float-to-double v5, p1

    invoke-static {v5, v6}, Lcom/powervision/gcs/utils/FormatUtils;->getLastTwoNum(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Lcom/powervision/gcs/utils/FormatUtils;->getLastTwoNum(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setSdCardRemain(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast v1, Lcom/powervision/localhttp/entity/PVW4GetSDState;

    iget-object v1, v1, Lcom/powervision/localhttp/entity/PVW4GetSDState;->used:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p2, Lcom/powervision/localhttp/entity/PVW4GetSDState;

    iget-object p2, p2, Lcom/powervision/localhttp/entity/PVW4GetSDState;->total:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setSdCardRemain(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-virtual {p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Check_18:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->setSdCardRemain(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
