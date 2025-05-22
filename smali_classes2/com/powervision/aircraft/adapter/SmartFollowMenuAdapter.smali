.class public Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;
.super Lcom/powervision/base/base/BaseRecyclerViewAdapter;
.source "SmartFollowMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseRecyclerViewAdapter<",
        "Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fcVersion:Ljava/lang/String;

.field private fragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

.field private isRecording:Z

.field private mIconArrays:[I

.field private mStringArrays:[Ljava/lang/String;

.field private mcVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Ljava/lang/String;Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/powervision/base/base/BaseRecyclerViewAdapter;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->isRecording:Z

    .line 36
    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->mIconArrays:[I

    .line 38
    iput-object p3, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->mStringArrays:[Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->fragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    .line 40
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string p2, "AP03_FC_VERSION"

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->fcVersion:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    const-string p2, "AP03_MC_VERSION"

    invoke-virtual {p1, p2}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->mcVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->mIconArrays:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->onBindViewHolder(Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;I)V
    .locals 5

    .line 60
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "smart"

    const-string v1, " is null..."

    .line 61
    invoke-static {v0, v1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->mStringArrays:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->mIconArrays:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-boolean v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->isRecording:Z

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 68
    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/powervision/camera/utils/CameraUtil;->isHigher30fps()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/powervision/aircraft/R$color;->color_969696:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7

    .line 81
    iget-object p2, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->fcVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/aircraft/R$string;->FC:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->mcVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/powervision/aircraft/R$string;->MC:I

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBiggerOrSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->isRecording:Z

    if-eqz p2, :cond_5

    goto :goto_2

    .line 87
    :cond_5
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/powervision/aircraft/R$color;->aircraft_white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object p1, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    .line 84
    :cond_6
    :goto_2
    iget-object p2, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/powervision/aircraft/R$color;->color_969696:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object p1, p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->fragment:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->onSmartItemClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;
    .locals 2

    .line 52
    iget-object p2, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_smart_follow_menu_adapter_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;

    invoke-direct {p2, p1}, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setIsRecording(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->isRecording:Z

    .line 46
    invoke-virtual {p0}, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
