.class public Lcom/powervision/gcs/view/ship/ShipCameraSettingView;
.super Landroid/widget/RelativeLayout;
.source "ShipCameraSettingView.java"


# instance fields
.field private activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field private basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

.field private cameraImageSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

.field private cameraType:I

.field private commonSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

.field private context:Landroid/content/Context;

.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private framents:[Ljava/lang/String;

.field pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

.field shipCameraBaseBtn:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfe8
    .end annotation
.end field

.field shipCameraCommonBtn:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xfef
    .end annotation
.end field

.field shipCameraDetail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff0
    .end annotation
.end field

.field shipCameraMenu:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff1
    .end annotation
.end field

.field shipCameraVideoBtn:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0xff4
    .end annotation
.end field

.field simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

.field private videoSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->get()Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    .line 57
    const-class v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-class v0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const-class v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p2, v3

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->framents:[Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraType:I

    .line 165
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    .line 71
    sget p2, Lcom/powervision/gcs/R$layout;->ship_camera_setting:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->context:Landroid/content/Context;

    .line 73
    iput p3, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraType:I

    .line 74
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 75
    iget p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraType:I

    if-ne p1, v2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraVideoBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/gcs/R$drawable;->ship_camera_video_selector:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraVideoBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/powervision/gcs/R$drawable;->ship_camera_shoot_selector:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraImageSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/ShipCameraSettingView;)Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->videoSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->addListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    .line 85
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    .line 86
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->commonSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    .line 87
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->videoSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    .line 88
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraImageSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    .line 89
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->context:Landroid/content/Context;

    check-cast v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->activity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    .line 90
    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 91
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 92
    sget v1, Lcom/powervision/gcs/R$id;->ship_camera_detail:I

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    const-class v3, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 93
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraBaseBtn:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->commonSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->commonSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->videoSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->videoSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraImageSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraImageSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->pvw4RequestListenerHelper:Lcom/powervision/localhttp/PVW4RequestListenerHelper;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->simpleListener:Lcom/powervision/localhttp/PVW4RequestSimpleListener;

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4RequestListenerHelper;->removeListener(Lcom/powervision/localhttp/PVW4RequestListener;)V

    return-void
.end method

.method ship_camera_base_btn()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfe8
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->basicSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraBasicSettingFragment;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method ship_camera_common_btn()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xfef
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->commonSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraCommonSettingFragment;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method ship_camera_video_btn()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xff4
        }
    .end annotation

    .line 126
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraVideoBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$drawable;->ship_camera_video_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->videoSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-virtual {p0, v0, v2, v1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->shipCameraVideoBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$drawable;->ship_camera_shoot_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->cameraImageSettingFragment:Lcom/powervision/gcs/ui/fgt/ship/CameraImageSettingFragment;

    invoke-virtual {p0, v0, v2, v1}, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    :goto_0
    return-void
.end method

.method public switchContent(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, p2, :cond_1

    .line 142
    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 143
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 152
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$id;->ship_camera_detail:I

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipCameraSettingView;->framents:[Ljava/lang/String;

    aget-object p3, v1, p3

    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    return-void
.end method
