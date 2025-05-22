.class public Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "ModifyPersonalInfoActivity.java"

# interfaces
.implements Lcom/powervision/user/ui/view/IPersonalInfoView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseActivity<",
        "Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;",
        "Lcom/powervision/base/base/BaseModel;",
        ">;",
        "Lcom/powervision/user/ui/view/IPersonalInfoView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CAMERA:I = 0x64

.field private static final REQUEST_CODE_CROP:I = 0x1f4

.field private static final REQUEST_CODE_PICK_PHOTO:I = 0x12c

.field private static final REQUEST_CODE_SELECT_COUNTRY:I = 0xc8

.field private static final REQUEST_PERMISSION:I = 0x190


# instance fields
.field private mAvatar:Landroid/widget/ImageView;

.field private mBindEmail:Landroid/widget/TextView;

.field private mBindEmailLayout:Landroid/widget/RelativeLayout;

.field private mBindPhone:Landroid/widget/TextView;

.field private mBindPhoneLayout:Landroid/widget/RelativeLayout;

.field private mBirthday:Ljava/lang/String;

.field private mBirthdayLayout:Landroid/widget/RelativeLayout;

.field private mCancel:Landroid/widget/TextView;

.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryLayout:Landroid/widget/RelativeLayout;

.field private mDatePickerDialog:Landroid/app/DatePickerDialog;

.field private mEditCity:Landroid/widget/EditText;

.field private mEditNickname:Landroid/widget/EditText;

.field private mEmail:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mLayoutHeadPic:Landroid/widget/RelativeLayout;

.field private mLocalAvatarPath:Ljava/lang/String;

.field private mNetAvatarPath:Ljava/lang/String;

.field private mNickname:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

.field private mSave:Landroid/widget/TextView;

.field private mTvBirthday:Landroid/widget/TextView;

.field private mTvCountry:Landroid/widget/TextView;

.field private mUserid:Ljava/lang/String;

.field private photoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->checkPermission()V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->pickPhoto()V

    return-void
.end method

.method private checkInfoStatus()Z
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEditNickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mNickname:Ljava/lang/String;

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    sget v0, Lcom/powervision/user/R$string;->APP_Mine_22:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return v1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvBirthday:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBirthday:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvCountry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountry:Ljava/lang/String;

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEditCity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCity:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhone:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPhone:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEmail:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    .line 226
    :cond_2
    :goto_0
    sget v0, Lcom/powervision/user/R$string;->APP_Mine_23:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return v1
.end method

.method private checkPermission()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 406
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    sget v0, Lcom/powervision/user/R$string;->AP03_Msg_139_2:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->takePhotoByCamera()V

    :goto_0
    return-void
.end method

.method private doPhoto(ILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getImageAbsolutePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/FileUtils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->workCropFun(Landroid/net/Uri;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 p2, 0x64

    if-ne p1, p2, :cond_3

    .line 347
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->photoUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getImageAbsolutePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/FileUtils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->workCropFun(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    const/16 p2, 0x1f4

    if-ne p1, p2, :cond_5

    .line 350
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 351
    sget p1, Lcom/powervision/user/R$string;->APP_Mine_24:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_4
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    sget p1, Lcom/powervision/user/R$string;->App_MediaLib_162:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/base/utils/ProgressDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    check-cast p1, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    iget-object p2, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->uploadPicture(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    .line 486
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 488
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 489
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 490
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 492
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 487
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 492
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getImageAbsolutePath(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 442
    :cond_0
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 443
    invoke-static {p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 444
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 445
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 446
    aget-object p1, p0, v4

    const-string v1, "primary"

    .line 447
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 450
    :cond_1
    invoke-static {p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "content://downloads/public_downloads"

    .line 452
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 453
    invoke-static {p0, p1, v0, v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 454
    :cond_2
    invoke-static {p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 455
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 457
    aget-object v1, p1, v4

    const-string v2, "image"

    .line 459
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const-string v2, "video"

    .line 461
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    const-string v2, "audio"

    .line 463
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 464
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_5
    :goto_0
    new-array v1, v3, [Ljava/lang/String;

    .line 467
    aget-object p1, p1, v3

    aput-object p1, v1, v4

    const-string p1, "_id=?"

    .line 468
    invoke-static {p0, v0, p1, v1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 471
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 473
    invoke-static {p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 474
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 475
    :cond_7
    invoke-static {p0, p1, v0, v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 478
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v1, "file"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 479
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    return-object v0
.end method

.method private initBirthday()V
    .locals 8

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x2

    .line 392
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v1, 0x5

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 394
    new-instance v1, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/powervision/user/ui/activity/-$$Lambda$ModifyPersonalInfoActivity$fACEaMpg0ZwniUMXvgp4DDL7PRY;

    invoke-direct {v4, p0}, Lcom/powervision/user/ui/activity/-$$Lambda$ModifyPersonalInfoActivity$fACEaMpg0ZwniUMXvgp4DDL7PRY;-><init>(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;)V

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    .line 399
    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    return-void
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 509
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 501
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 1

    .line 525
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 517
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private pickPhoto()V
    .locals 3

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12c

    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showSelectPhotoPopupWindow()V
    .locals 2

    .line 264
    new-instance v0, Lcom/powervision/user/views/UserCenterDialog;

    invoke-direct {v0, p0}, Lcom/powervision/user/views/UserCenterDialog;-><init>(Landroid/content/Context;)V

    .line 265
    new-instance v1, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$2;-><init>(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;Lcom/powervision/user/views/UserCenterDialog;)V

    invoke-virtual {v0, v1}, Lcom/powervision/user/views/UserCenterDialog;->setClickListener(Lcom/powervision/user/views/UserCenterDialog$ClickListenerInterface;)V

    .line 283
    invoke-virtual {v0}, Lcom/powervision/user/views/UserCenterDialog;->show()V

    return-void
.end method

.method private takePhotoByCamera()V
    .locals 4

    .line 290
    invoke-static {}, Lcom/powervision/base/utils/StorageUtil;->isExternalStorageWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 298
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->photoUri:Landroid/net/Uri;

    const-string v2, "output"

    .line 299
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 302
    :cond_0
    sget v0, Lcom/powervision/user/R$string;->APP_Mine_25:I

    invoke-virtual {p0, v0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private workCropFun(Landroid/net/Uri;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 365
    invoke-static {}, Lcom/powervision/base/utils/FileUtils;->getJpgImagePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 369
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v2, "image/*"

    .line 371
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v2, "true"

    .line 372
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "aspectX"

    .line 373
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "aspectY"

    .line 374
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputX"

    const/16 v2, 0x96

    .line 375
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputY"

    .line 376
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "scale"

    .line 377
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v2, "return-data"

    .line 378
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "output"

    .line 379
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 380
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "outputFormat"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "noFaceDetection"

    .line 381
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x1f4

    .line 382
    invoke-virtual {p0, v1, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/String;)V
    .locals 0

    .line 530
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    .line 531
    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 108
    sget v0, Lcom/powervision/user/R$layout;->user_activity_modify_personal_info:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    const-string v1, "local_avatar"

    invoke-virtual {v0, v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mNetAvatarPath:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/ImageManager;->loadCircleAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mNetAvatarPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/utils/ImageManager;->loadCircleAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEditNickname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountryCode:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLanguage:Ljava/lang/String;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "chineseCountryJson.txt"

    .line 153
    invoke-static {p0, v0}, Lcom/powervision/base/utils/FileUtils;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "englishCountryJson.txt"

    .line 155
    invoke-static {p0, v0}, Lcom/powervision/base/utils/FileUtils;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$1;

    invoke-direct {v2, p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$1;-><init>(Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;)V

    .line 159
    invoke-virtual {v2}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/model/ResultModel;

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {v0}, Lcom/powervision/base/model/ResultModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/model/CountryModel;

    .line 163
    invoke-virtual {v1}, Lcom/powervision/base/model/CountryModel;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    invoke-virtual {v1}, Lcom/powervision/base/model/CountryModel;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountry:Ljava/lang/String;

    goto :goto_2

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvCountry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBirthday:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvBirthday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCity:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEditCity:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    sget p1, Lcom/powervision/user/R$id;->personal_toolbar:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 114
    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 115
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 119
    :cond_0
    sget p1, Lcom/powervision/user/R$id;->personal_cancel:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCancel:Landroid/widget/TextView;

    .line 120
    sget p1, Lcom/powervision/user/R$id;->personal_save:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mSave:Landroid/widget/TextView;

    .line 121
    sget p1, Lcom/powervision/user/R$id;->head_image:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mAvatar:Landroid/widget/ImageView;

    .line 122
    sget p1, Lcom/powervision/user/R$id;->layout_headPic:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLayoutHeadPic:Landroid/widget/RelativeLayout;

    .line 123
    sget p1, Lcom/powervision/user/R$id;->edit_nickname:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEditNickname:Landroid/widget/EditText;

    .line 124
    sget p1, Lcom/powervision/user/R$id;->tv_birthday:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvBirthday:Landroid/widget/TextView;

    .line 125
    sget p1, Lcom/powervision/user/R$id;->edit_city:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEditCity:Landroid/widget/EditText;

    .line 126
    sget p1, Lcom/powervision/user/R$id;->tv_country:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvCountry:Landroid/widget/TextView;

    .line 127
    sget p1, Lcom/powervision/user/R$id;->phone_bind_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhone:Landroid/widget/TextView;

    .line 128
    sget p1, Lcom/powervision/user/R$id;->layout_phone_bind:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhoneLayout:Landroid/widget/RelativeLayout;

    .line 129
    sget p1, Lcom/powervision/user/R$id;->email_bind_text:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmail:Landroid/widget/TextView;

    .line 130
    sget p1, Lcom/powervision/user/R$id;->layout_email_bind:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmailLayout:Landroid/widget/RelativeLayout;

    .line 131
    sget p1, Lcom/powervision/user/R$id;->layout_country:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    .line 132
    sget p1, Lcom/powervision/user/R$id;->layout_birthday:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBirthdayLayout:Landroid/widget/RelativeLayout;

    .line 133
    invoke-static {}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 134
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLanguage:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mUserid:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->initBirthday()V

    return-void
.end method

.method public synthetic lambda$initBirthday$0$ModifyPersonalInfoActivity(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBirthday:Ljava/lang/String;

    .line 396
    iget-object p2, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvBirthday:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 317
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_2

    const-string p1, "country_code"

    .line 323
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountryCode:Ljava/lang/String;

    const-string p1, "country_name"

    .line 324
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object p2, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mTvCountry:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->doPhoto(ILandroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 238
    sget v0, Lcom/powervision/user/R$id;->personal_cancel:I

    if-ne p1, v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->finish()V

    goto :goto_0

    .line 240
    :cond_0
    sget v0, Lcom/powervision/user/R$id;->personal_save:I

    if-ne p1, v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->checkInfoStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 242
    sget p1, Lcom/powervision/user/R$string;->App_MediaLib_162:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/base/utils/ProgressDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBirthday:Ljava/lang/String;

    iget-object v2, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountryCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mNetAvatarPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mNickname:Ljava/lang/String;

    iget-object v5, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mUserid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/powervision/user/presenter/impl/PersonalInfoPresenter;->modifyPersonalInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    sget v0, Lcom/powervision/user/R$id;->layout_headPic:I

    if-ne p1, v0, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->showSelectPhotoPopupWindow()V

    goto :goto_0

    .line 247
    :cond_2
    sget v0, Lcom/powervision/user/R$id;->layout_birthday:I

    if-ne p1, v0, :cond_3

    .line 248
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    if-eqz p1, :cond_6

    .line 249
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 251
    :cond_3
    sget v0, Lcom/powervision/user/R$id;->layout_country:I

    if-ne p1, v0, :cond_4

    .line 252
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object p1

    const-string v0, "/login/selectCountryActivity"

    invoke-virtual {p1, v0}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, p0, v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 253
    :cond_4
    sget v0, Lcom/powervision/user/R$id;->layout_phone_bind:I

    if-ne p1, v0, :cond_5

    .line 254
    const-class p1, Lcom/powervision/user/ui/activity/PhoneBindActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 255
    :cond_5
    sget v0, Lcom/powervision/user/R$id;->layout_email_bind:I

    if-ne p1, v0, :cond_6

    .line 256
    const-class p1, Lcom/powervision/user/ui/activity/EmailBindActivity;

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->startActivity(Ljava/lang/Class;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 421
    invoke-super {p0, p1, p2, p3}, Lcom/powervision/base/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x190

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 423
    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->takePhotoByCamera()V

    goto :goto_0

    .line 428
    :cond_0
    sget p1, Lcom/powervision/user/R$string;->AP03_Msg_139_2:I

    invoke-virtual {p0, p1}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/ToastUtils;->centerShortToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 189
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLanguage:Ljava/lang/String;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getUserphone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPhone:Ljava/lang/String;

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhone:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhoneLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->getUserInfo()Lcom/powervision/base/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/model/UserInfo;->getUseremail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEmail:Ljava/lang/String;

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmailLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmailLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhoneLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLayoutHeadPic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBirthdayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mCountryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindPhoneLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mBindEmailLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public success(I)V
    .locals 2

    .line 536
    invoke-static {}, Lcom/powervision/base/utils/ProgressDialogUtils;->dismissDialog()V

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    .line 538
    invoke-static {}, Lcom/powervision/base/utils/ImageManager;->get()Lcom/powervision/base/utils/ImageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/utils/ImageManager;->loadCircleAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    .line 546
    iget-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mPreferenceUtil:Lcom/powervision/base/utils/SharedPreferencesUtils;

    iget-object v0, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mLocalAvatarPath:Ljava/lang/String;

    const-string v1, "local_avatar"

    invoke-virtual {p1, v1, v0}, Lcom/powervision/base/utils/SharedPreferencesUtils;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    const/16 v0, 0xc3

    invoke-virtual {p1, v0}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    .line 548
    invoke-virtual {p0}, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNetAvatarPath(Ljava/lang/String;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/powervision/user/ui/activity/ModifyPersonalInfoActivity;->mNetAvatarPath:Ljava/lang/String;

    return-void
.end method
