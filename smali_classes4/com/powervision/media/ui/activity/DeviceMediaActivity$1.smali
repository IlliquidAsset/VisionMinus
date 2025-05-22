.class Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "DeviceMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/activity/DeviceMediaActivity;->initRecycler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

.field final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/activity/DeviceMediaActivity;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    iput-object p2, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;->this$0:Lcom/powervision/media/ui/activity/DeviceMediaActivity;

    invoke-static {v0}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$000(Lcom/powervision/media/ui/activity/DeviceMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/powervision/media/ui/activity/DeviceMediaActivity;->access$100(Lcom/powervision/media/ui/activity/DeviceMediaActivity;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 166
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/localhttp/entity/FileInfo;

    invoke-virtual {p1}, Lcom/powervision/localhttp/entity/FileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/powervision/media/ui/activity/DeviceMediaActivity$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
