.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;
.super Ljava/lang/Object;
.source "AirLapseFreeView.java"

# interfaces
.implements Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V
    .locals 1

    .line 166
    sput p2, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->intervalIndex:I

    .line 167
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$200(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$102(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;I)I

    .line 168
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$400(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$100(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$302(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;Ljava/util/List;)Ljava/util/List;

    .line 169
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$500(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->access$600(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 170
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$500(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->access$600(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$300(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$500(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->notifyDataSetChanged()V

    .line 172
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$300(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$700(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 174
    iget-object p2, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$800(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/base/views/widget/WheelView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$3;->this$0:Lcom/powervision/aircraft/ui/views/AirLapseFreeView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/AirLapseFreeView;->access$800(Lcom/powervision/aircraft/ui/views/AirLapseFreeView;)Lcom/powervision/base/views/widget/WheelView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    :goto_0
    return-void
.end method
