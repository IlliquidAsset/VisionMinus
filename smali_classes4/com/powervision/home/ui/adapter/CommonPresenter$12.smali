.class Lcom/powervision/home/ui/adapter/CommonPresenter$12;
.super Ljava/lang/Object;
.source "CommonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/adapter/CommonPresenter;->updateBideBarStatus(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

.field final synthetic val$notify:[B

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/adapter/CommonPresenter;[BI)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iput-object p2, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->val$notify:[B

    iput p3, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 1021
    invoke-static {}, Lcn/powervision/upgrade/manager/NewFirmWareManager;->get()Lcn/powervision/upgrade/manager/NewFirmWareManager;

    sget-object v1, Lcn/powervision/upgrade/manager/NewFirmWareManager;->updat_packet:[B

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1022
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->val$notify:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1023
    iget-object v4, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->val$notify:[B

    aget-byte v4, v4, v3

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "lzqFirm"

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTag HomeFirm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v1}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    sget v3, Lcom/powervision/home/R$id;->home_first:I

    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(ILjava/lang/Object;)V

    .line 1029
    iget v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->val$status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLockDevice()V

    const-string v0, "lzqFirm"

    const-string v1, "updateBideBarStatus ====== -1"

    .line 1032
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_1
    iget v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->val$status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1037
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLockDevice()V

    .line 1039
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1042
    :cond_2
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1043
    :cond_3
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    const-string v3, "3"

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(ILjava/lang/Object;)V

    .line 1044
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$400(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$string;->AP03_Upgrade_5:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1045
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v1, v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/powervision/home/R$color;->grey_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 1046
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$12$1;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$12$1;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$12;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1055
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const-string v0, "lzqFirm"

    const-string v1, "updateBideBarStatus ====== 3"

    .line 1059
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1061
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0, v2}, Lcom/powervision/home/ui/adapter/CommonPresenter;->lockDevice(Z)V

    .line 1063
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1064
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1066
    :cond_6
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1067
    :cond_7
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(ILjava/lang/Object;)V

    .line 1068
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v1, v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/home/R$color;->upgrade_force:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 1070
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$400(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$string;->AP03_Upgrade_6:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1072
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$12$2;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$12$2;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$12;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    :cond_8
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1082
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const-string v0, "lzqFirm"

    const-string v1, "updateBideBarStatus ====== 2"

    .line 1084
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1086
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-virtual {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->unLockDevice()V

    .line 1087
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    .line 1088
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1090
    :cond_b
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1091
    :cond_c
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$id;->home_second:I

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(ILjava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v1, v1, Lcom/powervision/home/ui/adapter/CommonPresenter;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/powervision/home/R$color;->blue:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 1094
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$400(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/powervision/home/R$string;->AP03_Upgrade_5:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1098
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    invoke-static {v0}, Lcom/powervision/home/ui/adapter/CommonPresenter;->access$200(Lcom/powervision/home/ui/adapter/CommonPresenter;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/powervision/home/ui/adapter/CommonPresenter$12$3;

    invoke-direct {v1, p0}, Lcom/powervision/home/ui/adapter/CommonPresenter$12$3;-><init>(Lcom/powervision/home/ui/adapter/CommonPresenter$12;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    :cond_d
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 1108
    iget-object v0, p0, Lcom/powervision/home/ui/adapter/CommonPresenter$12;->this$0:Lcom/powervision/home/ui/adapter/CommonPresenter;

    iget-object v0, v0, Lcom/powervision/home/ui/adapter/CommonPresenter;->closeBt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const-string v0, "lzqFirm"

    const-string v1, "updateBideBarStatus ====== 1"

    .line 1110
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 1025
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
