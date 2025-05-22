.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;
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

    .line 147
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/powervision/base/views/widget/WheelView;I)V
    .locals 4

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemSelected: index = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrailSettingFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$502(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;I)I

    .line 153
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Z

    move-result p1

    const-string v1, ", length = "

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    iget-object p1, p1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempIntervalMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected: lapseVideoLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected: currentInterval == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v3}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;->onSelected(II)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected: currentInterval -------- "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;->onSelected(II)V

    :cond_1
    :goto_0
    return-void
.end method
