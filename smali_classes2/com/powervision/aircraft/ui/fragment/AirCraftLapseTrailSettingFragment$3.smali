.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;
.super Ljava/lang/Object;
.source "AirCraftLapseTrailSettingFragment.java"

# interfaces
.implements Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V
    .locals 3

    .line 113
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$202(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;I)I

    .line 115
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemSelected: videoLengthMap = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    iget-object v0, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempIntervalMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currentInterval = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrailSettingFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempIntervalMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected: lapseVideoLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected: ...... currentInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected: currentInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;->onSelected(II)V

    goto/16 :goto_0

    .line 126
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 127
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$902(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Ljava/util/List;)Ljava/util/List;

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 134
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 138
    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$1100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/base/views/widget/WheelView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$1100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/base/views/widget/WheelView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    :cond_3
    :goto_0
    return-void
.end method
