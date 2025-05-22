.class Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder$1;
.super Ljava/lang/Object;
.source "SelfCheckAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->initCustomKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder$1;->this$1:Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 185
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder$1;->this$1:Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;

    iget p1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mLastPos:I

    if-eq p1, p3, :cond_0

    .line 186
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder$1;->this$1:Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;

    iput p3, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->mLastPos:I

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "self----- onItemSelected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder$1;->this$1:Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;

    iget-object p1, p1, Lcom/powervision/aircraft/adapter/SelfCheckAdapter$MyViewHolder;->this$0:Lcom/powervision/aircraft/adapter/SelfCheckAdapter;

    invoke-static {p1}, Lcom/powervision/aircraft/adapter/SelfCheckAdapter;->access$100(Lcom/powervision/aircraft/adapter/SelfCheckAdapter;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p1

    const-string p2, "PV_CK_MODE"

    invoke-virtual {p1, p2, p3}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadRemoteIntParameter(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
