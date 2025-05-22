.class public Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ShipCameraSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$OnChildScrollSelect;,
        Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NochildViewHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$SlideViewHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$SlidChildHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;,
        Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public onChildScrollSelect:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$OnChildScrollSelect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string v0, "items"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 210
    iget-object p3, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    const-string p5, "type"

    invoke-virtual {p3, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p5

    const/4 v0, 0x0

    const v1, -0x3df94319

    if-eq p5, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p5, "normal"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, -0x1

    :goto_1
    if-eqz p3, :cond_2

    goto :goto_4

    :cond_2
    if-nez p4, :cond_3

    .line 214
    new-instance p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;-><init>(Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$1;)V

    .line 215
    iget-object p5, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->context:Landroid/content/Context;

    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    sget v1, Lcom/powervision/gcs/R$layout;->gcs_ship_camera_basic_setting_child_items:I

    invoke-virtual {p5, v1, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 216
    sget p5, Lcom/powervision/gcs/R$id;->ship_camara_item_child_text:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/powervision/gcs/view/ship/ShipSelectTextView;

    iput-object p5, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;->childName:Lcom/powervision/gcs/view/ship/ShipSelectTextView;

    .line 217
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;

    .line 221
    :goto_2
    iget-object p5, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/HashMap;

    const-string v1, "items"

    invoke-virtual {p5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 222
    iget-object p5, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/HashMap;

    invoke-virtual {p5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Ljava/lang/String;

    check-cast p5, [Ljava/lang/String;

    aget-object p2, p5, p2

    .line 223
    iget-object p5, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p5, "value"

    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 224
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;->childName:Lcom/powervision/gcs/view/ship/ShipSelectTextView;

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Lcom/powervision/gcs/view/ship/ShipSelectTextView;->setSelected(Z)V

    goto :goto_3

    .line 226
    :cond_4
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;->childName:Lcom/powervision/gcs/view/ship/ShipSelectTextView;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/ship/ShipSelectTextView;->setSelected(Z)V

    .line 228
    :goto_3
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalChildHolder;->childName:Lcom/powervision/gcs/view/ship/ShipSelectTextView;

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipSelectTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_4
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "items"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    array-length p1, p1

    :goto_0
    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 74
    iget-object p4, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashMap;

    const-string v0, "type"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x3df94319

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, -0x1

    :goto_1
    if-eqz p4, :cond_2

    goto/16 :goto_4

    :cond_2
    if-nez p3, :cond_3

    .line 78
    new-instance p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;-><init>(Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$1;)V

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/powervision/gcs/R$layout;->gcs_ship_camera_basic_setting_items:I

    invoke-virtual {v0, v2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 80
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_item_name:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_item_value:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->selectName:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/powervision/gcs/R$id;->ship_camara_item_arrow:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    .line 88
    :goto_2
    iget-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->groupName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "items"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 90
    iget-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->selectName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->selectName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miaojx"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 95
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_down:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 97
    :cond_4
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    sget p2, Lcom/powervision/gcs/R$mipmap;->camera_settings_tabulation_right:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 100
    :cond_5
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->selectName:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object p1, p3, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$NormalGroupHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    move-object p3, p4

    :goto_4
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setOnChildScrollSelect(Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$OnChildScrollSelect;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter;->onChildScrollSelect:Lcom/powervision/gcs/adapter/ship/ShipCameraSettingAdapter$OnChildScrollSelect;

    return-void
.end method
