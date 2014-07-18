.class public Lcom/airbnb/android/fragments/groups/ContentFragment;
.super Lcom/airbnb/android/fragments/groups/BaseContentFragment;
.source "ContentFragment.java"


# instance fields
.field private mBodyTextView:Landroid/widget/TextView;

.field private mContent:Lcom/airbnb/android/models/groups/Content;

.field private mDots:Lcom/airbnb/android/views/DotsCounter;

.field private mPhotoContainer:Landroid/view/View;

.field private mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/ContentFragment;)Lcom/airbnb/android/views/DotsCounter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/ContentFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mDots:Lcom/airbnb/android/views/DotsCounter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/ContentFragment;)Lcom/airbnb/android/views/ClickableViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/ContentFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/ContentFragment;
    .registers 4
    .param p0, "groupsUri"    # Lcom/airbnb/android/models/groups/GroupsUri;

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "groups_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    new-instance v1, Lcom/airbnb/android/fragments/groups/ContentFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/ContentFragment;-><init>()V

    .line 46
    .local v1, "fragment":Lcom/airbnb/android/fragments/groups/ContentFragment;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/ContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method

.method private onSharePressed()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 151
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://airbnb.com/groups/content/content-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Content;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 155
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v6, "android.intent.extra.TEXT"

    const v7, 0x7f0e06ed

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 157
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_62

    .line 158
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "currUserName":Ljava/lang/String;
    const v6, 0x7f0e06ee

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "subject":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .end local v1    # "currUserName":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :cond_62
    const v6, 0x7f0e06fb

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/groups/ContentFragment;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected createHeaderView()Landroid/view/View;
    .registers 4

    .prologue
    .line 58
    const v1, 0x7f03010d

    const v2, 0x7f030129

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/groups/ContentFragment;->inflateHeaderView(II)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f080327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoContainer:Landroid/view/View;

    .line 61
    const v1, 0x7f080328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/ClickableViewPager;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 62
    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/DotsCounter;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mDots:Lcom/airbnb/android/views/DotsCounter;

    .line 63
    const v1, 0x7f080329

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mBodyTextView:Landroid/widget/TextView;

    .line 64
    return-object v0
.end method

.method public onContentLoadFailedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onContentLoadFailedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;)V

    .line 135
    return-void
.end method

.method public onContentLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onContentLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;)V

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    const v1, 0x7f0e021f

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->setActionBarTitle(I)V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 145
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 141
    :pswitch_c
    const-string/jumbo v0, "tap_share"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 142
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/ContentFragment;->onSharePressed()V

    .line 143
    const/4 v0, 0x1

    goto :goto_b

    .line 139
    nop

    :pswitch_data_1c
    .packed-switch 0x7f080537
        :pswitch_c
    .end packed-switch
.end method

.method protected updateView()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ContentFragment;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/groups/Content;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 70
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mTitleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Content;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v2

    .line 73
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 74
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_2b
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->hasBody()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 117
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/MiscUtils;->prettyPrintListHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "prettyHtml":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mBodyTextView:Landroid/widget/TextView;

    const/16 v5, 0xf

    invoke-static {v3, v5}, Lcom/airbnb/android/utils/MiscUtils;->linkifyHtml(Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .end local v3    # "prettyHtml":Ljava/lang/String;
    :goto_55
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateView()V

    .line 124
    return-void

    .line 76
    :cond_59
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 77
    .local v1, "numDots":I
    if-le v1, v6, :cond_74

    .line 78
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mDots:Lcom/airbnb/android/views/DotsCounter;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/views/DotsCounter;->setNumDots(I)V

    .line 80
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v5, Lcom/airbnb/android/fragments/groups/ContentFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/ContentFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/ContentFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    :cond_74
    new-instance v0, Lcom/airbnb/android/adapters/groups/PhotosAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/ContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v4, v2, v5, v6}, Lcom/airbnb/android/adapters/groups/PhotosAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;ZZ)V

    .line 101
    .local v0, "adapter":Lcom/airbnb/android/adapters/groups/PhotosAdapter;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v4, v0}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/groups/ContentFragment;->setPhotoPager(Lcom/airbnb/android/views/ClickableViewPager;)V

    .line 104
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v5, Lcom/airbnb/android/fragments/groups/ContentFragment$2;

    invoke-direct {v5, p0, v2}, Lcom/airbnb/android/fragments/groups/ContentFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/ContentFragment;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/ClickableViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2b

    .line 121
    .end local v0    # "adapter":Lcom/airbnb/android/adapters/groups/PhotosAdapter;
    .end local v1    # "numDots":I
    :cond_97
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/ContentFragment;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_55
.end method
