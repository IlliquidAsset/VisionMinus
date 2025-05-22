.class public abstract Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;
.super Lcn/sharesdk/onekeyshare/OnekeySharePage;
.source "FriendListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DESIGN_LEFT_PADDING:I = 0x28


# instance fields
.field private adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

.field private checkNum:I

.field private lastPosition:I

.field private llPage:Landroid/widget/LinearLayout;

.field private platform:Lcn/sharesdk/framework/Platform;

.field private rlTitle:Landroid/widget/RelativeLayout;

.field private tvCancel:Landroid/widget/TextView;

.field private tvConfirm:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeySharePage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->lastPosition:I

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    return-void
.end method

.method private initTitle(Landroid/widget/RelativeLayout;F)V
    .locals 9

    .line 135
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    const v1, -0xc4c4c5

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 138
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_cancel"

    invoke-static {v0, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 144
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v0, Landroid/widget/TextView;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v8, "ssdk_oks_contacts"

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    .line 158
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    const v1, -0x92ef

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_oks_confirm"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 167
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 171
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateConfirmView()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_oks_confirm"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Confirm"

    .line 222
    :goto_0
    iget v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    .line 225
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvConfirm:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected abstract getDesignTitleHeight()I
.end method

.method protected abstract getRatio()F
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->finish()V

    goto :goto_1

    .line 180
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 182
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v2, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v2

    iget-boolean v2, v2, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v2, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object v2

    iget-object v2, v2, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->atName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "selected"

    .line 188
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->setResult(Ljava/util/HashMap;)V

    .line 191
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->finish()V

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 7

    .line 78
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xc0c0d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->rlTitle:Landroid/widget/RelativeLayout;

    .line 85
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getRatio()F

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getDesignTitleHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 87
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->initTitle(Landroid/widget/RelativeLayout;F)V

    .line 92
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v5

    if-gez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    float-to-int v6, v6

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v6, -0x252627

    .line 95
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 102
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v3, Lcom/mob/tools/gui/PullToRequestView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/mob/tools/gui/PullToRequestView;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v3, v5}, Lcom/mob/tools/gui/PullToRequestView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v2, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-direct {v2, p0, v3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;Lcom/mob/tools/gui/PullToRequestView;)V

    iput-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    .line 117
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 118
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v2, v0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->setRatio(F)V

    .line 119
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {v3, v0}, Lcom/mob/tools/gui/PullToRequestView;->setAdapter(Lcom/mob/tools/gui/PullToRequestAdatper;)V

    .line 127
    invoke-virtual {v3, v1}, Lcom/mob/tools/gui/PullToRequestView;->performPullingDown(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 196
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FacebookMessenger"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->lastPosition:I

    if-ltz p1, :cond_0

    .line 198
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {p2, p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object p1

    const/4 p2, 0x0

    .line 199
    iput-boolean p2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    .line 201
    :cond_0
    iput p3, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->lastPosition:I

    .line 203
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {p1, p3}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;

    move-result-object p1

    .line 204
    iget-boolean p2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    .line 206
    iget-boolean p1, p1, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter$Following;->checked:Z

    if-eqz p1, :cond_2

    .line 207
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    goto :goto_0

    .line 209
    :cond_2
    iget p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->checkNum:I

    .line 212
    :goto_0
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->updateConfirmView()V

    .line 213
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->adapter:Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;

    invoke-virtual {p1}, Lcn/sharesdk/onekeyshare/themes/classic/FriendAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/FriendListPage;->platform:Lcn/sharesdk/framework/Platform;

    return-void
.end method
