.class public Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ConnectGuideBottomDialogFragment.java"


# static fields
.field public static final GUIDE_1:I = 0x0

.field public static final GUIDE_2:I = 0x1

.field public static final GUIDE_REMOTE:I = 0x2

.field public static final GUIDE_WIFI:I = 0x3

.field public static final MODE_REMOTE:I = 0x0

.field public static final MODE_WIFI:I = 0x1

.field public static final PARAMS_PATH:Ljava/lang/String; = "param_path"

.field private static final TAG:Ljava/lang/String; = "ConnectGuideBottomDialo"

.field public static final TIME_REMOTE_PAIR:I = 0x2710


# instance fields
.field controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

.field private guide_1_connect_device:Lcom/powervision/gcs/view/ConnectGuideTile;

.field private guide_1_main_page:Lcom/powervision/gcs/view/ConnectGuideTile;

.field private guide_1_remote_pair:Lcom/powervision/gcs/view/ConnectGuideTile;

.field private guide_1_seeker_pair:Lcom/powervision/gcs/view/ConnectGuideTile;

.field private guide_2_remote_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

.field private guide_2_remote_wifi_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

.field private guide_2_wifi_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

.field private handlerRemotePair:Landroid/os/Handler;

.field private iv_connect_guide_back:Landroid/widget/ImageView;

.field private iv_guide_remote_progress1:Landroid/widget/ImageView;

.field private iv_guide_remote_progress2:Landroid/widget/ImageView;

.field private iv_guide_remote_progress3:Landroid/widget/ImageView;

.field private iv_guide_remote_wifi_progress1:Landroid/widget/ImageView;

.field private iv_guide_remote_wifi_progress2:Landroid/widget/ImageView;

.field private iv_guide_remote_wifi_progress3:Landroid/widget/ImageView;

.field private iv_guide_wifi_progress1:Landroid/widget/ImageView;

.field private iv_guide_wifi_progress2:Landroid/widget/ImageView;

.field private iv_guide_wifi_progress3:Landroid/widget/ImageView;

.field private ll_guide_1:Landroid/widget/LinearLayout;

.field private ll_guide_2:Landroid/widget/LinearLayout;

.field private ll_guide_model:Landroid/widget/LinearLayout;

.field private ll_guide_remote:Landroid/widget/LinearLayout;

.field private ll_guide_remote_note_1:Landroid/widget/LinearLayout;

.field private ll_guide_remote_note_2:Landroid/widget/LinearLayout;

.field private ll_guide_remote_note_3:Landroid/widget/LinearLayout;

.field private ll_guide_remote_wifi:Landroid/widget/LinearLayout;

.field private ll_guide_remote_wifi_note_1:Landroid/widget/LinearLayout;

.field private ll_guide_remote_wifi_note_2:Landroid/widget/LinearLayout;

.field private ll_guide_remote_wifi_note_3:Landroid/widget/LinearLayout;

.field private ll_guide_wifi:Landroid/widget/LinearLayout;

.field private ll_guide_wifi_note_1:Landroid/widget/LinearLayout;

.field private ll_guide_wifi_note_2:Landroid/widget/LinearLayout;

.field private ll_guide_wifi_note_3:Landroid/widget/LinearLayout;

.field private remote_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

.field private remote_wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

.field private tv_connect_guide_close:Landroid/widget/ImageView;

.field private tv_connect_guide_title:Landroid/widget/TextView;

.field private tv_guide_remote_wifi_note_3_4:Landroid/widget/TextView;

.field private tv_guide_remote_wifi_note_3_5:Landroid/widget/TextView;

.field private tv_guide_wifi_note_3_1:Landroid/widget/TextView;

.field private tv_guide_wifi_note_3_2:Landroid/widget/TextView;

.field private tv_guide_wifi_note_3_3:Landroid/widget/TextView;

.field private tv_model:Landroid/widget/TextView;

.field private tv_remote_next:Landroid/widget/TextView;

.field private tv_remote_wifi_next:Landroid/widget/TextView;

.field private tv_wifi_next:Landroid/widget/TextView;

.field private wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->handlerRemotePair:Landroid/os/Handler;

    return-void
.end method

.method private guide1View()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->ConnectGuide_12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_model:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private guide2View()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->ConnectGuide_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_model:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$mcuky8S-Zo-oWX00Otdr7bQX3RE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$mcuky8S-Zo-oWX00Otdr7bQX3RE;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private guideModelView()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_ConnectGuide_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_model:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$7s70BjIiawhJBzT4Wyd7U5M2cJ0;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$7s70BjIiawhJBzT4Wyd7U5M2cJ0;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_close:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$cbFlwKbgJSqDpfDoP2DSVnjOi1w;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$cbFlwKbgJSqDpfDoP2DSVnjOi1w;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_connect_device:Lcom/powervision/gcs/view/ConnectGuideTile;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$pIZZkzJxIyXHQMKazEJHYxmeyLU;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$pIZZkzJxIyXHQMKazEJHYxmeyLU;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ConnectGuideTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_remote_pair:Lcom/powervision/gcs/view/ConnectGuideTile;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$Y3_ADW0Z6-e6bIEhQgbSX9stg6k;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$Y3_ADW0Z6-e6bIEhQgbSX9stg6k;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ConnectGuideTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_seeker_pair:Lcom/powervision/gcs/view/ConnectGuideTile;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$t1NpXp0PhnuOoxplCAkUJCHTsks;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$t1NpXp0PhnuOoxplCAkUJCHTsks;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ConnectGuideTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_main_page:Lcom/powervision/gcs/view/ConnectGuideTile;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$CU7OrHiN3z3F_M1S3GiIc6M9Ens;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$CU7OrHiN3z3F_M1S3GiIc6M9Ens;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ConnectGuideTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_2_remote_wifi_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$HUsCrkwZXFDOrRJhBSeh30i0D_c;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$HUsCrkwZXFDOrRJhBSeh30i0D_c;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ConnectGuideTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_2_remote_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$6-0n19kNQ-ruXBHnAOgd7hva4WI;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$6-0n19kNQ-ruXBHnAOgd7hva4WI;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ConnectGuideTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_2_wifi_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$Urvv5mvGZVAxJ5ao4m_MIWmo56o;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$Urvv5mvGZVAxJ5ao4m_MIWmo56o;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/ConnectGuideTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_model:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$CbpnxUqZWV5UMVT8DzEa-pfrqAI;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$CbpnxUqZWV5UMVT8DzEa-pfrqAI;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initRemote1Video()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_wifi_guide_1:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initRemote2Video()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_wifi_guide_2:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initRemote3Video()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_remote_guide_1:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initRemoteWifi1Video()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_wifi_guide_1:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initRemoteWifi2Video()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_wifi_guide_2:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initRemoteWifi3Video()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_remote_wifi_connect:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V
    .locals 2

    .line 373
    new-instance v0, Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiao/nicevideoplayer/VideoOnlyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 374
    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->releasePlayer()V

    const/16 v0, 0xde

    .line 375
    invoke-virtual {p1, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setPlayerType(I)V

    const/4 v0, 0x0

    .line 376
    invoke-virtual {p1, p2, v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setUp(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p2, 0x1

    .line 377
    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setLooping(Z)V

    .line 379
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    sget v0, Lcom/powervision/gcs/R$drawable;->video_white_background:I

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 381
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    .line 382
    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/VideoOnlyController;->imageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 384
    iget-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->controller:Lcom/xiao/nicevideoplayer/VideoOnlyController;

    invoke-virtual {p1, p2}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->setController(Lcom/xiao/nicevideoplayer/NiceVideoPlayerController;)V

    const-wide/16 v0, 0x0

    .line 385
    invoke-virtual {p1, v0, v1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->start(J)V

    return-void
.end method

.method private initWifi1Video()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_wifi_guide_1:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initWifi2Video()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_wifi_guide_2:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method private initWifi3Video()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    sget v1, Lcom/powervision/gcs/R$raw;->v_wifi_guide_3:I

    invoke-static {v1}, Lcom/powervision/gcs/utils/ResourceUtils;->getRawResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initVideo(Lcom/xiao/nicevideoplayer/NiceVideoPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance()Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;
    .locals 2

    .line 161
    new-instance v0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;-><init>()V

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private remoteModeView()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_model:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private remoteModeView1()V
    .locals 2

    .line 628
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initRemote1Video()V

    .line 630
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 631
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 635
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$IM8LwL6F8P8LmqUux_e5eZomNXs;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$IM8LwL6F8P8LmqUux_e5eZomNXs;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$2_ORGlX4WG1lbrgdi50mfdWjkck;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$2_ORGlX4WG1lbrgdi50mfdWjkck;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private remoteModeView2()V
    .locals 3

    .line 656
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initRemote2Video()V

    .line 658
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 663
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_22:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_21:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 671
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 673
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$lRi6qwzraSGzDu_bomFwORtl3rI;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$lRi6qwzraSGzDu_bomFwORtl3rI;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$pUy40Fv8oLoBOiAzl2eEB_mLH0g;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$pUy40Fv8oLoBOiAzl2eEB_mLH0g;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private remoteModeView3()V
    .locals 4

    .line 681
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initRemote3Video()V

    .line 683
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 684
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 688
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_3:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->ConnectGuide_26:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$string;->ConnectGuide_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 711
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$PsyIkbG0W-g_Ge1SYsSGPN_m834;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$PsyIkbG0W-g_Ge1SYsSGPN_m834;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$BbgHNTZyABcwXlqRyXHj1QWWkb8;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$BbgHNTZyABcwXlqRyXHj1QWWkb8;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ConnectGuideBottomDialo"

    const-string v1, "remoteModeView3: postDelayed"

    .line 715
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->handlerRemotePair:Landroid/os/Handler;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$mQ9NlncdJQUuhetSOkQoPz20kM8;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$mQ9NlncdJQUuhetSOkQoPz20kM8;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private remoteWifiModeView()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_model:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private remoteWifiModeView1()V
    .locals 2

    .line 516
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initRemoteWifi1Video()V

    .line 518
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 519
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$9VTfDdTKf8j7NUQnsWqTW2ElodA;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$9VTfDdTKf8j7NUQnsWqTW2ElodA;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$cz7_8BdkbX5ONp8_35lJkdyYsTg;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$cz7_8BdkbX5ONp8_35lJkdyYsTg;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private remoteWifiModeView2()V
    .locals 3

    .line 539
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initRemoteWifi2Video()V

    .line 541
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->handlerRemotePair:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_22:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_21:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 554
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$ZqZPDNHPOPfqxl4x4Q4uB_nBduo;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$ZqZPDNHPOPfqxl4x4Q4uB_nBduo;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$KZEkSlF4-gJhBx5LIGqDCb8FMMY;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$KZEkSlF4-gJhBx5LIGqDCb8FMMY;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private remoteWifiModeView3()V
    .locals 4

    .line 565
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initRemoteWifi3Video()V

    .line 567
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_3:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    sget v0, Lcom/powervision/gcs/R$string;->ConnectGuide_37:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PDO_RC_XXX"

    const-string v3, "<b>PDO_RC_XXX</b>"

    .line 577
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "12345678"

    const-string v3, "<b>12345678</b>"

    .line 578
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 579
    iget-object v2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_remote_wifi_note_3_4:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-static {}, Lcom/powervision/gcs/utils/DeviceUtils;->isAboveAndroidOMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_remote_wifi_note_3_5:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_remote_wifi_note_3_5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v2, Lcom/powervision/gcs/R$string;->ConnectGuide_26:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v2, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$U8NrCq7Z17t1d9Yj6DsWyLMZIOw;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$U8NrCq7Z17t1d9Yj6DsWyLMZIOw;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    new-instance v2, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$89Fv2_-289-vmtzC8ZUWU3sgiAs;

    invoke-direct {v2, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$89Fv2_-289-vmtzC8ZUWU3sgiAs;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$string;->ConnectGuide_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v0, "ConnectGuideBottomDialo"

    const-string v1, "remoteWifiModeView3: postDelayed"

    .line 597
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->handlerRemotePair:Landroid/os/Handler;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$S0dcriPAH91aFj_P3IXaBbyI_-c;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$S0dcriPAH91aFj_P3IXaBbyI_-c;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private wifiModeView()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_model:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private wifiModeView1()V
    .locals 2

    .line 780
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView()V

    .line 782
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 784
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 786
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_36:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$NMrV5e17-cD_p7RSqNu-El7-v2U;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$NMrV5e17-cD_p7RSqNu-El7-v2U;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_wifi_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$zRXI1rEvSY8sp79JXP-tQDCjs9w;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$zRXI1rEvSY8sp79JXP-tQDCjs9w;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private wifiModeView2()V
    .locals 3

    .line 812
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView()V

    .line 814
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 815
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 816
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3hui:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 818
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_22:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 823
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_wifi_next:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_21:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 832
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$x-nVgn8P4_zJlspSefoyyOL3oPw;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$x-nVgn8P4_zJlspSefoyyOL3oPw;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_wifi_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$a0uKUCFdQ5_NzPhZYUZsiUST4xI;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$a0uKUCFdQ5_NzPhZYUZsiUST4xI;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private wifiModeView3()V
    .locals 5

    .line 843
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView()V

    .line 845
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress1:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_1s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 846
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress2:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_2s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 847
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress3:Landroid/widget/ImageView;

    sget v1, Lcom/powervision/gcs/R$mipmap;->firmware_update_3s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 849
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_3:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    sget v0, Lcom/powervision/gcs/R$string;->ConnectGuide_31:I

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    sget v2, Lcom/powervision/gcs/R$string;->ConnectGuide_32:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PDO_VEH_XXX"

    const-string v4, "<b>PDO_VEH_XXX</b>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "12345678"

    const-string v4, "<b>12345678</b>"

    .line 858
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 859
    iget-object v3, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_wifi_note_3_1:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_wifi_note_3_2:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    invoke-static {}, Lcom/powervision/gcs/utils/DeviceUtils;->isAboveAndroidOMR1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_wifi_note_3_3:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_wifi_note_3_3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_39:I

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_wifi_next:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->ConnectGuide_42:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 867
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$P4XBkIbFhanYHxCRjAafrnkjIe0;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$P4XBkIbFhanYHxCRjAafrnkjIe0;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_wifi_next:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$eDqswQSQLU0AEBLVAVPs9v2DDhw;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/bottom/-$$Lambda$ConnectGuideBottomDialogFragment$eDqswQSQLU0AEBLVAVPs9v2DDhw;-><init>(Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public closeBottomConnectEvent(Lcom/powervision/gcs/event/CloseBottomConnectEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public deviceStatus(Lcom/powervision/base/event/PVW4ConnectStatusEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 319
    iget p1, p1, Lcom/powervision/base/event/PVW4ConnectStatusEvent;->mConnectStatus:I

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$guide2View$10$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 474
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide1View()V

    return-void
.end method

.method public synthetic lambda$guideModelView$9$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide2View()V

    return-void
.end method

.method public synthetic lambda$initListener$0$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 390
    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public synthetic lambda$initListener$1$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide2View()V

    return-void
.end method

.method public synthetic lambda$initListener$2$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 396
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initListener$3$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 400
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ConnectSeekerPairActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initListener$4$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 406
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initListener$5$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteWifiModeView()V

    .line 413
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteWifiModeView1()V

    return-void
.end method

.method public synthetic lambda$initListener$6$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteModeView()V

    .line 420
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteModeView1()V

    return-void
.end method

.method public synthetic lambda$initListener$7$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initWifi1Video()V

    .line 427
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView1()V

    return-void
.end method

.method public synthetic lambda$initListener$8$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guideModelView()V

    return-void
.end method

.method public synthetic lambda$remoteModeView1$18$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 644
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide2View()V

    .line 645
    iget-object p1, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    return-void
.end method

.method public synthetic lambda$remoteModeView1$19$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 648
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteModeView2()V

    return-void
.end method

.method public synthetic lambda$remoteModeView2$20$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 673
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteModeView1()V

    return-void
.end method

.method public synthetic lambda$remoteModeView2$21$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 674
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteModeView3()V

    return-void
.end method

.method public synthetic lambda$remoteModeView3$22$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 711
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteModeView2()V

    return-void
.end method

.method public synthetic lambda$remoteModeView3$23$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 713
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$remoteModeView3$24$ConnectGuideBottomDialogFragment()V
    .locals 2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u914d\u5bf9 \uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqw4_dl01"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$remoteWifiModeView1$11$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 530
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide2View()V

    .line 531
    iget-object p1, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    return-void
.end method

.method public synthetic lambda$remoteWifiModeView1$12$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 533
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteWifiModeView2()V

    return-void
.end method

.method public synthetic lambda$remoteWifiModeView2$13$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 557
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteWifiModeView1()V

    return-void
.end method

.method public synthetic lambda$remoteWifiModeView2$14$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 559
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteWifiModeView3()V

    return-void
.end method

.method public synthetic lambda$remoteWifiModeView3$15$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remoteWifiModeView2()V

    return-void
.end method

.method public synthetic lambda$remoteWifiModeView3$16$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 591
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$remoteWifiModeView3$17$ConnectGuideBottomDialogFragment()V
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u914d\u5bf9  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->get()Lcom/powervision/natives/connect/Dl01ConnectSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/natives/connect/Dl01ConnectSDK;->getGroundStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqw4_dl01"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {}, Lcom/powervision/gcs/utils/W4RemoteConnectUtils;->isRemoteConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$wifiModeView1$25$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide2View()V

    .line 794
    iget-object p1, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {p1}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    return-void
.end method

.method public synthetic lambda$wifiModeView1$26$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initWifi2Video()V

    .line 798
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView2()V

    return-void
.end method

.method public synthetic lambda$wifiModeView2$27$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 833
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initWifi1Video()V

    .line 834
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView1()V

    return-void
.end method

.method public synthetic lambda$wifiModeView2$28$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 837
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initWifi3Video()V

    .line 838
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView3()V

    return-void
.end method

.method public synthetic lambda$wifiModeView3$29$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 868
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initWifi2Video()V

    .line 869
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifiModeView2()V

    return-void
.end method

.method public synthetic lambda$wifiModeView3$30$ConnectGuideBottomDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 873
    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 169
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103022f

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->setStyle(II)V

    .line 171
    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getArguments()Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    .line 181
    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 183
    sget v1, Lcom/powervision/gcs/R$style;->BottomDialogAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 184
    invoke-virtual {p3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_connect_guide_bottom_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 188
    sget p2, Lcom/powervision/gcs/R$id;->iv_connect_guide_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_connect_guide_back:Landroid/widget/ImageView;

    .line 189
    sget p2, Lcom/powervision/gcs/R$id;->tv_connect_guide_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_title:Landroid/widget/TextView;

    .line 190
    sget p2, Lcom/powervision/gcs/R$id;->tv_connect_guide_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_connect_guide_close:Landroid/widget/ImageView;

    .line 192
    sget p2, Lcom/powervision/gcs/R$id;->guide_1_connect_device:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ConnectGuideTile;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_connect_device:Lcom/powervision/gcs/view/ConnectGuideTile;

    .line 193
    sget p2, Lcom/powervision/gcs/R$id;->guide_1_remote_pair:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ConnectGuideTile;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_remote_pair:Lcom/powervision/gcs/view/ConnectGuideTile;

    .line 194
    sget p2, Lcom/powervision/gcs/R$id;->guide_1_seeker_pair:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ConnectGuideTile;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_seeker_pair:Lcom/powervision/gcs/view/ConnectGuideTile;

    .line 195
    sget p2, Lcom/powervision/gcs/R$id;->guide_1_main_page:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ConnectGuideTile;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_1_main_page:Lcom/powervision/gcs/view/ConnectGuideTile;

    .line 201
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_1:Landroid/widget/LinearLayout;

    .line 202
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_2:Landroid/widget/LinearLayout;

    .line 203
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_model:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_model:Landroid/widget/LinearLayout;

    .line 204
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote_wifi:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi:Landroid/widget/LinearLayout;

    .line 205
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote:Landroid/widget/LinearLayout;

    .line 206
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_wifi:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi:Landroid/widget/LinearLayout;

    .line 208
    sget p2, Lcom/powervision/gcs/R$id;->tv_model:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_model:Landroid/widget/TextView;

    .line 209
    sget p2, Lcom/powervision/gcs/R$id;->guide_2_remote_wifi_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ConnectGuideTile;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_2_remote_wifi_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

    .line 210
    sget p2, Lcom/powervision/gcs/R$id;->guide_2_remote_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ConnectGuideTile;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_2_remote_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

    .line 211
    sget p2, Lcom/powervision/gcs/R$id;->guide_2_wifi_mode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/powervision/gcs/view/ConnectGuideTile;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide_2_wifi_mode:Lcom/powervision/gcs/view/ConnectGuideTile;

    .line 215
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_remote_wifi_progress1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress1:Landroid/widget/ImageView;

    .line 216
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_remote_wifi_progress2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress2:Landroid/widget/ImageView;

    .line 217
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_remote_wifi_progress3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_wifi_progress3:Landroid/widget/ImageView;

    .line 218
    sget p2, Lcom/powervision/gcs/R$id;->remote_wifi_player:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 219
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote_wifi_note_1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_1:Landroid/widget/LinearLayout;

    .line 220
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote_wifi_note_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_2:Landroid/widget/LinearLayout;

    .line 221
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote_wifi_note_3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_wifi_note_3:Landroid/widget/LinearLayout;

    .line 222
    sget p2, Lcom/powervision/gcs/R$id;->tv_guide_remote_wifi_note_3_4:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_remote_wifi_note_3_4:Landroid/widget/TextView;

    .line 223
    sget p2, Lcom/powervision/gcs/R$id;->tv_guide_remote_wifi_note_3_5:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_remote_wifi_note_3_5:Landroid/widget/TextView;

    .line 224
    sget p2, Lcom/powervision/gcs/R$id;->tv_remote_wifi_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_wifi_next:Landroid/widget/TextView;

    .line 228
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_remote_progress1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress1:Landroid/widget/ImageView;

    .line 229
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_remote_progress2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress2:Landroid/widget/ImageView;

    .line 230
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_remote_progress3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_remote_progress3:Landroid/widget/ImageView;

    .line 231
    sget p2, Lcom/powervision/gcs/R$id;->remote_player:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 232
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote_note_1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_1:Landroid/widget/LinearLayout;

    .line 233
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote_note_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_2:Landroid/widget/LinearLayout;

    .line 234
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_remote_note_3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_remote_note_3:Landroid/widget/LinearLayout;

    .line 237
    sget p2, Lcom/powervision/gcs/R$id;->tv_remote_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_remote_next:Landroid/widget/TextView;

    .line 240
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_wifi_progress1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress1:Landroid/widget/ImageView;

    .line 241
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_wifi_progress2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress2:Landroid/widget/ImageView;

    .line 242
    sget p2, Lcom/powervision/gcs/R$id;->iv_guide_wifi_progress3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->iv_guide_wifi_progress3:Landroid/widget/ImageView;

    .line 243
    sget p2, Lcom/powervision/gcs/R$id;->wifi_player:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    .line 244
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_wifi_note_1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_1:Landroid/widget/LinearLayout;

    .line 245
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_wifi_note_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_2:Landroid/widget/LinearLayout;

    .line 246
    sget p2, Lcom/powervision/gcs/R$id;->ll_guide_wifi_note_3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->ll_guide_wifi_note_3:Landroid/widget/LinearLayout;

    .line 247
    sget p2, Lcom/powervision/gcs/R$id;->tv_guide_wifi_note_3_1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_wifi_note_3_1:Landroid/widget/TextView;

    .line 248
    sget p2, Lcom/powervision/gcs/R$id;->tv_guide_wifi_note_3_2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_wifi_note_3_2:Landroid/widget/TextView;

    .line 249
    sget p2, Lcom/powervision/gcs/R$id;->tv_guide_wifi_note_3_3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_guide_wifi_note_3_3:Landroid/widget/TextView;

    .line 250
    sget p2, Lcom/powervision/gcs/R$id;->tv_wifi_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->tv_wifi_next:Landroid/widget/TextView;

    .line 252
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;->get()Lcom/powervision/gcs/view/ship/shipcallback/Mt03RemoteControlBatterySurplusHelper;

    .line 253
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 256
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->guide1View()V

    .line 260
    invoke-direct {p0}, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->initListener()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 622
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 623
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->handlerRemotePair:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 310
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 311
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->wifi_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    .line 313
    iget-object v0, p0, Lcom/powervision/gcs/view/bottom/ConnectGuideBottomDialogFragment;->remote_player:Lcom/xiao/nicevideoplayer/NiceVideoPlayer;

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayer;->release()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 304
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 305
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->suspendNiceVideoPlayer()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 295
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 296
    invoke-static {}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->instance()Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiao/nicevideoplayer/NiceVideoPlayerManager;->resumeNiceVideoPlayer()V

    return-void
.end method
