.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;
.super Lcom/powervision/base/views/widget/WheelView$WheelAdapter;
.source "AirCraftLapseTrailSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LengthAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {p0}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;-><init>()V

    .line 300
    invoke-static {p2}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 303
    :cond_0
    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;)Ljava/util/List;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getItemCount()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
