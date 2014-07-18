.class public Lcom/airbnb/android/views/ROTabBar;
.super Landroid/widget/RelativeLayout;
.source "ROTabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/ROTabBar$ROTabListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ANIM_DELAY:I = 0x5dc

.field private static final PULSE_ANIM_DURATION:J = 0x258L

.field private static final YOFFSET:I = 0x5


# instance fields
.field private mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

.field private mStatus:Landroid/widget/TextView;

.field private mStatusAnim:Landroid/view/animation/Animation;

.field private mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

.field private mTabListener:Lcom/airbnb/android/views/ROTabBar$ROTabListener;

.field private mUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/airbnb/android/views/ROTabBar;->setupViews()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/views/ROTabBar;->setupViews()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/airbnb/android/views/ROTabBar;->setupViews()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/ROTabBar;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ROTabBar;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/views/ROTabBar;->canSwitchTab()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/ROTabBar;)Lcom/airbnb/android/adapters/ROPagerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ROTabBar;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/ROTabBar;)Lcom/airbnb/android/views/ROTabBar$ROTabListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/ROTabBar;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mTabListener:Lcom/airbnb/android/views/ROTabBar$ROTabListener;

    return-object v0
.end method

.method private canSwitchTab()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mTabListener:Lcom/airbnb/android/views/ROTabBar$ROTabListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setupROTabBarAndButtons()V
    .registers 6

    .prologue
    .line 85
    const v3, 0x7f0804ab

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/ROTabBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/views/ROTabBar;->mUserName:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f0804ac

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/ROTabBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/ROTabButton;

    .line 88
    .local v0, "itineraryBtn":Lcom/airbnb/android/views/ROTabButton;
    const v3, 0x7f0804ad

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/ROTabBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/ROTabButton;

    .line 89
    .local v2, "profileBtn":Lcom/airbnb/android/views/ROTabButton;
    const v3, 0x7f0804ae

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/ROTabBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ROTabButton;

    .line 91
    .local v1, "messageBtn":Lcom/airbnb/android/views/ROTabButton;
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/airbnb/android/views/ROTabButton;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    iput-object v3, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    .line 93
    sget-object v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/ROTabButton;->setImageResource(I)V

    .line 94
    new-instance v3, Lcom/airbnb/android/views/ROTabBar$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/views/ROTabBar$1;-><init>(Lcom/airbnb/android/views/ROTabBar;)V

    invoke-virtual {v0, v3}, Lcom/airbnb/android/views/ROTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget-object v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Profile:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIconResource()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/ROTabButton;->setImageResource(I)V

    .line 104
    new-instance v3, Lcom/airbnb/android/views/ROTabBar$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/views/ROTabBar$2;-><init>(Lcom/airbnb/android/views/ROTabBar;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/ROTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget-object v3, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->getIconResource()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/ROTabButton;->setImageResource(I)V

    .line 114
    new-instance v3, Lcom/airbnb/android/views/ROTabBar$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/views/ROTabBar$3;-><init>(Lcom/airbnb/android/views/ROTabBar;)V

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/ROTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private setupViews()V
    .registers 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/views/ROTabBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301ba

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/airbnb/android/views/ROTabBar;->setupROTabBarAndButtons()V

    .line 58
    const v0, 0x7f08037a

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/ROTabBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/views/ROTabBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mStatusAnim:Landroid/view/animation/Animation;

    .line 61
    return-void
.end method

.method private statusHasChanged(Lcom/airbnb/android/models/ReservationStatus;)Z
    .registers 4
    .param p1, "status"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public animateTabBarButtons()V
    .registers 9

    .prologue
    const v7, 0x7f04000d

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/android/views/ROTabBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 68
    .local v0, "animBtn0":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/views/ROTabBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 70
    .local v1, "animBtn1":Landroid/view/animation/Animation;
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/views/ROTabBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 72
    .local v2, "animBtn2":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 74
    iget-object v3, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/airbnb/android/views/ROTabButton;->getIconButton()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    iget-object v3, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/airbnb/android/views/ROTabButton;->getIconButton()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    iget-object v3, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/airbnb/android/views/ROTabButton;->getIconButton()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    return-void
.end method

.method public animateTabBarButtonsPulse(J)V
    .registers 7
    .param p1, "startDelay"    # J

    .prologue
    .line 80
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 81
    .local v0, "msgTabBtn":Lcom/airbnb/android/views/ROTabButton;
    invoke-virtual {v0}, Lcom/airbnb/android/views/ROTabButton;->getIconButton()Landroid/widget/ImageView;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-static {v1, v2, v3, p1, p2}, Lcom/airbnb/android/utils/animation/AnimationHelper;->pulse(Landroid/view/View;JJ)V

    .line 82
    return-void
.end method

.method public disableTabButtons()V
    .registers 6

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    .local v0, "arr$":[Lcom/airbnb/android/views/ROTabButton;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_10

    aget-object v1, v0, v2

    .line 142
    .local v1, "btn":Lcom/airbnb/android/views/ROTabButton;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/airbnb/android/views/ROTabButton;->setVisibility(I)V

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 144
    .end local v1    # "btn":Lcom/airbnb/android/views/ROTabButton;
    :cond_10
    return-void
.end method

.method public selectTabButton(I)V
    .registers 12
    .param p1, "btnIndex"    # I

    .prologue
    .line 161
    iget-object v5, p0, Lcom/airbnb/android/views/ROTabBar;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/ROPagerAdapter;->hasItinerary()Z

    move-result v5

    if-nez v5, :cond_a

    .line 162
    add-int/lit8 p1, p1, 0x1

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    .local v0, "arr$":[Lcom/airbnb/android/views/ROTabButton;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v4, :cond_19

    aget-object v1, v0, v3

    .line 165
    .local v1, "btn":Lcom/airbnb/android/views/ROTabButton;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/airbnb/android/views/ROTabButton;->setSelected(Z)V

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 167
    .end local v1    # "btn":Lcom/airbnb/android/views/ROTabButton;
    :cond_19
    iget-object v5, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    aget-object v2, v5, p1

    .line 168
    .local v2, "btnToSelect":Lcom/airbnb/android/views/ROTabButton;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/ROTabButton;->setSelected(Z)V

    .line 169
    invoke-virtual {v2}, Lcom/airbnb/android/views/ROTabButton;->getIconButton()Landroid/widget/ImageView;

    move-result-object v5

    const-wide/16 v6, 0x258

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/airbnb/android/utils/animation/AnimationHelper;->pulse(Landroid/view/View;JJ)V

    .line 170
    return-void
.end method

.method public setItineraryTabButtonEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Itinerary:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ROTabButton;->setVisibility(I)V

    .line 134
    return-void

    .line 133
    :cond_11
    const/4 v0, 0x4

    goto :goto_d
.end method

.method public setMessageTabButtonEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    sget-object v1, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->Message:Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ROPagerAdapter$ROSection;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ROTabButton;->setVisibility(I)V

    .line 138
    return-void

    .line 137
    :cond_11
    const/16 v0, 0x8

    goto :goto_d
.end method

.method public setROPagerAdapter(Lcom/airbnb/android/adapters/ROPagerAdapter;)V
    .registers 2
    .param p1, "pagerAdapter"    # Lcom/airbnb/android/adapters/ROPagerAdapter;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/airbnb/android/views/ROTabBar;->mROPagerAdapter:Lcom/airbnb/android/adapters/ROPagerAdapter;

    .line 158
    return-void
.end method

.method public setStatus(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 5
    .param p1, "status"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 173
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->hasDisplayString()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 174
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/ROTabBar;->statusHasChanged(Lcom/airbnb/android/models/ReservationStatus;)Z

    move-result v0

    .line 180
    .local v0, "shouldAnimate":Z
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/ReservationStatus;->getDisplayStringId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 182
    if-eqz v0, :cond_2e

    .line 183
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabBar;->mStatusAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 184
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 185
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/airbnb/android/views/ROTabBar;->mStatusAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    .end local v0    # "shouldAnimate":Z
    :cond_2e
    :goto_2e
    return-void

    .line 189
    :cond_2f
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabBar;->mStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e
.end method

.method public setTabBarButtonsAlpha(F)V
    .registers 6
    .param p1, "alpha"    # F

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mTabBarButtons:[Lcom/airbnb/android/views/ROTabButton;

    .local v0, "arr$":[Lcom/airbnb/android/views/ROTabButton;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 148
    .local v3, "tabButton":Lcom/airbnb/android/views/ROTabButton;
    invoke-virtual {v3, p1}, Lcom/airbnb/android/views/ROTabButton;->setTabButtonAlpha(F)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 150
    .end local v3    # "tabButton":Lcom/airbnb/android/views/ROTabButton;
    :cond_e
    return-void
.end method

.method public setTabListener(Lcom/airbnb/android/views/ROTabBar$ROTabListener;)V
    .registers 2
    .param p1, "tabListener"    # Lcom/airbnb/android/views/ROTabBar$ROTabListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/airbnb/android/views/ROTabBar;->mTabListener:Lcom/airbnb/android/views/ROTabBar$ROTabListener;

    .line 154
    return-void
.end method

.method public updateDisplayText(Ljava/lang/String;)V
    .registers 3
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabBar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method
