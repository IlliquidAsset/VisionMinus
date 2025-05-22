.class public Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ShipIntroduceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;
    }
.end annotation


# static fields
.field private static final DESC:Ljava/lang/String; = "des"

.field private static LAYOUT_ID:Ljava/lang/String; = "layout_id"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private layoutId:I

.field private mAddress:Ljava/lang/String;

.field private mCancle:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConfirm:Landroid/widget/TextView;

.field private mDesc:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mLatLng:Ljava/lang/String;

.field private mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

.field private mTitle:Ljava/lang/String;

.field private mTvDesc:Landroid/widget/TextView;

.field private mTvDialog:Landroid/app/Dialog;

.field private mTvTitle:Landroid/widget/TextView;

.field private mType:I

.field private shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field private videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;)Lcom/powervision/gcs/view/ship/ShipVideoView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    return-object p0
.end method

.method public static newInstance(I)Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;
    .locals 3

    .line 142
    new-instance v0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;-><init>()V

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 144
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;
    .locals 3

    .line 154
    new-instance v0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;-><init>()V

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 156
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "des"

    .line 157
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/powervision/gcs/R$id;->ship_route_cancle:I

    if-ne v0, v1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/powervision/gcs/R$id;->ship_route_confirm:I

    if-ne p1, v0, :cond_10

    .line 242
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 243
    iget p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 244
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 246
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 248
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 250
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 252
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 254
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 256
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 258
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 260
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x10

    if-ne p1, v0, :cond_a

    .line 262
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_a
    const/16 v0, 0x12

    if-ne p1, v0, :cond_b

    .line 264
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_b
    const/16 v0, 0x13

    if-ne p1, v0, :cond_c

    .line 266
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_c
    const/16 v0, 0x14

    if-ne p1, v0, :cond_d

    .line 268
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_d
    const/16 v0, 0x16

    if-ne p1, v0, :cond_e

    .line 270
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_e
    const/16 v0, 0x17

    if-ne p1, v0, :cond_f

    .line 272
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    goto :goto_0

    :cond_f
    const/16 v0, 0x18

    if-ne p1, v0, :cond_10

    .line 274
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    invoke-interface {p1, p0, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;->showConfirmDetail(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;I)V

    :cond_10
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x1030074

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->setStyle(II)V

    .line 166
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mType:I

    .line 168
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "des"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mDesc:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 57
    iget p2, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mType:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 58
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_user_location:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_0
    if-ne p2, p3, :cond_1

    .line 60
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_airline_start:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_1
    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    .line 62
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_off_hook:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_2
    const/4 p3, 0x5

    if-ne p2, p3, :cond_3

    .line 64
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_vr_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_3
    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    .line 66
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_search_fish:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_4
    const/4 p3, 0x6

    const-string v1, "/"

    const-string v2, "android.resource://"

    if-ne p2, p3, :cond_5

    .line 68
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_airline_plan:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 69
    sget p2, Lcom/powervision/gcs/R$id;->check_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 70
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    sget p2, Lcom/powervision/gcs/R$id;->ship_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/view/ship/ShipVideoView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/powervision/gcs/R$raw;->line_sche:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 73
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->start()V

    .line 75
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    new-instance p2, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$1;-><init>(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_1

    :cond_5
    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    .line 82
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_scan_area:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 83
    sget p2, Lcom/powervision/gcs/R$id;->check_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 84
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    sget p2, Lcom/powervision/gcs/R$id;->ship_video:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/view/ship/ShipVideoView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/powervision/gcs/R$raw;->area_scan:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 87
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipVideoView;->start()V

    .line 89
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    new-instance p2, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$2;-><init>(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/view/ship/ShipVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_1

    :cond_6
    const/16 p3, 0x8

    if-ne p2, p3, :cond_7

    .line 96
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_safe_area:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_7
    const/16 p3, 0x9

    if-ne p2, p3, :cond_8

    .line 98
    sget p2, Lcom/powervision/gcs/R$layout;->ship_delete_interest_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 99
    sget p2, Lcom/powervision/gcs/R$id;->text_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDesc:Landroid/widget/TextView;

    .line 100
    sget p2, Lcom/powervision/gcs/R$string;->PVW4_Map_21:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_8
    const/16 p3, 0x10

    if-ne p2, p3, :cond_9

    .line 102
    sget p2, Lcom/powervision/gcs/R$layout;->ship_safe_area_hint_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_9
    const/16 p3, 0x11

    if-ne p2, p3, :cond_a

    .line 104
    sget p2, Lcom/powervision/gcs/R$layout;->ship_introduce_vr_no_connect:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    goto/16 :goto_1

    :cond_a
    const/16 p3, 0x12

    if-ne p2, p3, :cond_b

    .line 106
    sget p2, Lcom/powervision/gcs/R$layout;->ship_delete_interest_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 107
    sget p2, Lcom/powervision/gcs/R$id;->text_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDesc:Landroid/widget/TextView;

    .line 108
    iget-object p2, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    const/16 p3, 0x13

    if-eq p2, p3, :cond_f

    const/16 p3, 0x17

    if-ne p2, p3, :cond_c

    goto :goto_0

    :cond_c
    const/16 p3, 0x14

    if-ne p2, p3, :cond_d

    .line 114
    sget p2, Lcom/powervision/gcs/R$layout;->ship_delete_interest_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 115
    sget p2, Lcom/powervision/gcs/R$id;->text_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDesc:Landroid/widget/TextView;

    .line 116
    iget-object p2, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_d
    const/16 p3, 0x16

    if-ne p2, p3, :cond_e

    .line 118
    sget p2, Lcom/powervision/gcs/R$layout;->ship_delete_interest_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 119
    sget p2, Lcom/powervision/gcs/R$id;->text_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDesc:Landroid/widget/TextView;

    .line 120
    sget p2, Lcom/powervision/gcs/R$string;->PVW4_Msg_156:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_e
    const/16 p3, 0x18

    if-ne p2, p3, :cond_10

    .line 122
    sget p2, Lcom/powervision/gcs/R$layout;->ship_speed_too_low:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 123
    sget p2, Lcom/powervision/gcs/R$id;->check_box:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_1

    .line 110
    :cond_f
    :goto_0
    sget p2, Lcom/powervision/gcs/R$layout;->ship_delete_interest_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    .line 111
    sget p2, Lcom/powervision/gcs/R$id;->text_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDesc:Landroid/widget/TextView;

    .line 112
    iget-object p2, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    sget p2, Lcom/powervision/gcs/R$id;->ship_route_cancle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mCancle:Landroid/widget/TextView;

    .line 127
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    sget p2, Lcom/powervision/gcs/R$id;->ship_route_confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mConfirm:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 130
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->setOnFunctionDetailListener(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;)V

    .line 131
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mCancle:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 285
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 286
    iget-object v0, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->videoView:Lcom/powervision/gcs/view/ship/ShipVideoView;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/powervision/gcs/view/ship/ShipVideoView;->suspend()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 175
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 176
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 178
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 182
    iget v0, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mType:I

    const/4 v1, 0x3

    const/high16 v2, 0x43aa0000    # 340.0f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    const/high16 v3, 0x43480000    # 200.0f

    const/high16 v4, 0x43a00000    # 320.0f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/high16 v0, 0x43910000    # 290.0f

    .line 210
    invoke-static {v0}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    const/high16 v1, 0x439b0000    # 310.0f

    .line 211
    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x43b40000    # 360.0f

    .line 188
    invoke-static {v0}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    .line 189
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    const/high16 v1, 0x43a50000    # 330.0f

    .line 194
    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    .line 207
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    goto :goto_0

    .line 202
    :cond_2
    :pswitch_1
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    .line 203
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x43960000    # 300.0f

    .line 184
    invoke-static {v0}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v0

    .line 185
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 233
    iget-object v2, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mTvDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnFunctionDetailListener(Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->mListener:Lcom/powervision/gcs/view/ShipIntroduceDialogFragment$IFunctionDetailListener;

    return-void
.end method
