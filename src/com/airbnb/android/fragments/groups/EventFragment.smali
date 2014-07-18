.class public Lcom/airbnb/android/fragments/groups/EventFragment;
.super Lcom/airbnb/android/fragments/groups/BaseContentFragment;
.source "EventFragment.java"


# instance fields
.field private mAddressTextView:Landroid/widget/TextView;

.field private mBackground:Z

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mEvent:Lcom/airbnb/android/models/groups/Event;

.field private mFullButton:Landroid/widget/Button;

.field private mGoingView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mJoinButton:Landroid/widget/Button;

.field private mLikes:Landroid/view/View;

.field private mNumRsvpsTextViewCount:Landroid/widget/TextView;

.field private mNumRsvpsTextViewText:Landroid/widget/TextView;

.field private mRsvpPhotostrip:Lcom/airbnb/android/views/PhotoStripView;

.field private mStarDateTextView:Landroid/widget/TextView;

.field private mStartTimeTextView:Landroid/widget/TextView;

.field private mStaticMap:Lcom/airbnb/android/views/StaticMapView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUnjoinButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/models/groups/Event;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/groups/EventFragment;Lcom/airbnb/android/models/groups/Event;)Lcom/airbnb/android/models/groups/Event;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/EventFragment;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/EventFragment;)Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->getEventRegistrationRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/EventFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->updateRsvps()V

    return-void
.end method

.method private doStaticMap()V
    .registers 6

    .prologue
    .line 194
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StaticMapView;->setup()V

    .line 195
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Event;->getLat()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Event;->getLng()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 196
    .local v0, "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/StaticMapView;->centerMap(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 197
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StaticMapView;->addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 198
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StaticMapView;->freeze()V

    .line 199
    return-void
.end method

.method private getEventRegistrationRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/EventRegistrationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/airbnb/android/fragments/groups/EventFragment$5;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/EventFragment$5;-><init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/EventFragment;
    .registers 4
    .param p0, "groupsUri"    # Lcom/airbnb/android/models/groups/GroupsUri;

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "groups_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    new-instance v1, Lcom/airbnb/android/fragments/groups/EventFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/EventFragment;-><init>()V

    .line 68
    .local v1, "fragment":Lcom/airbnb/android/fragments/groups/EventFragment;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/EventFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method

.method private onSharePressed()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 307
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://airbnb.com/groups/content/event-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Event;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 311
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v6, "android.intent.extra.TEXT"

    const v7, 0x7f0e06f1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 313
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_62

    .line 314
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "currUserName":Ljava/lang/String;
    const v6, 0x7f0e06f2

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "subject":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    .end local v1    # "currUserName":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :cond_62
    const v6, 0x7f0e06fa

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/groups/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method private updateRsvps()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 218
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 219
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_ad

    .line 220
    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 222
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v7, v1}, Lcom/airbnb/android/models/groups/Event;->isRegisteredBy(Lcom/airbnb/android/models/User;)Z

    move-result v3

    .line 223
    .local v3, "isRsvped":Z
    if-eqz v3, :cond_4f

    .line 224
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mFullButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    :goto_28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v6, "rsvpUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/groups/Registration;

    .line 239
    .local v5, "registration":Lcom/airbnb/android/models/groups/Registration;
    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Registration;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/airbnb/android/models/User;->getPictureUrlForThumbnail()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 227
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "registration":Lcom/airbnb/android/models/groups/Registration;
    .end local v6    # "rsvpUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4f
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Event;->canJoin()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 228
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mFullButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_28

    .line 232
    :cond_67
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mFullButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_28

    .line 243
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "rsvpUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_77
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 244
    .local v4, "numRsvps":I
    if-lez v4, :cond_ae

    .line 245
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mNumRsvpsTextViewCount:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mNumRsvpsTextViewText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d000f

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mGoingView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :goto_9b
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mRsvpPhotostrip:Lcom/airbnb/android/views/PhotoStripView;

    invoke-virtual {v7, v6}, Lcom/airbnb/android/views/PhotoStripView;->setImageUrls(Ljava/util/List;)V

    .line 253
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v7

    if-nez v7, :cond_ad

    .line 254
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 257
    .end local v1    # "currentUser":Lcom/airbnb/android/models/User;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isRsvped":Z
    .end local v4    # "numRsvps":I
    .end local v6    # "rsvpUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ad
    return-void

    .line 249
    .restart local v1    # "currentUser":Lcom/airbnb/android/models/User;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isRsvped":Z
    .restart local v4    # "numRsvps":I
    .restart local v6    # "rsvpUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ae
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mGoingView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9b
.end method


# virtual methods
.method protected createHeaderView()Landroid/view/View;
    .registers 4

    .prologue
    .line 82
    const v1, 0x7f03010e

    const v2, 0x7f03012a

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/groups/EventFragment;->inflateHeaderView(II)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0802e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mLikes:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mLikes:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v1, 0x7f08032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f080336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mDescriptionTextView:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f08032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mAddressTextView:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f08032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStartTimeTextView:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f08032b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStarDateTextView:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f08032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoStripView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mRsvpPhotostrip:Lcom/airbnb/android/views/PhotoStripView;

    .line 93
    const v1, 0x7f080330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mNumRsvpsTextViewCount:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f080331

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mNumRsvpsTextViewText:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f08032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mGoingView:Landroid/view/View;

    .line 96
    const v1, 0x7f080333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;

    .line 97
    const v1, 0x7f080334

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;

    .line 98
    const v1, 0x7f080335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mFullButton:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mFullButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    const v1, 0x7f080213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/StaticMapView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    .line 101
    return-object v0
.end method

.method public onContentLoadFailedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onContentLoadFailedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;)V

    .line 291
    return-void
.end method

.method public onContentLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$EventLoadedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$EventLoadedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onContentLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;)V

    .line 285
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    const v1, 0x7f0e024b

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->setActionBarTitle(I)V

    .line 78
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 301
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 297
    :pswitch_c
    const-string/jumbo v0, "tap_share"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 298
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->onSharePressed()V

    .line 299
    const/4 v0, 0x1

    goto :goto_b

    .line 295
    nop

    :pswitch_data_1c
    .packed-switch 0x7f080537
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mBackground:Z

    .line 206
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onResume()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mBackground:Z

    .line 212
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticMapView;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_19

    .line 213
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->doStaticMap()V

    .line 215
    :cond_19
    return-void
.end method

.method protected updateView()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    .line 106
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/groups/Event;

    iput-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    .line 108
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mTitleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Event;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Event;->hasDescriptoin()Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 111
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Event;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mDescriptionTextView:Landroid/widget/TextView;

    const/16 v5, 0xf

    invoke-static {v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 113
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mDescriptionTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_39
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mAddressTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Event;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v4, 0x7f0e0746

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/groups/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 121
    .local v0, "formatter":Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Event;->getStartsAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "startsTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStartTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "formatter":Ljava/text/DateFormat;
    const v4, 0x7f0e0498

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/groups/EventFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 125
    .restart local v0    # "formatter":Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Event;->getStartsAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "startDate":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStarDateTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mGoingView:Landroid/view/View;

    new-instance v5, Lcom/airbnb/android/fragments/groups/EventFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/EventFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mJoinButton:Landroid/widget/Button;

    new-instance v5, Lcom/airbnb/android/fragments/groups/EventFragment$2;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/EventFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mUnjoinButton:Landroid/widget/Button;

    new-instance v5, Lcom/airbnb/android/fragments/groups/EventFragment$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/EventFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mBackground:Z

    if-nez v4, :cond_a7

    .line 173
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->doStaticMap()V

    .line 175
    :cond_a7
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mStaticMap:Lcom/airbnb/android/views/StaticMapView;

    new-instance v5, Lcom/airbnb/android/fragments/groups/EventFragment$4;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/EventFragment$4;-><init>(Lcom/airbnb/android/fragments/groups/EventFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/StaticMapView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->updateRsvps()V

    .line 186
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateView()V

    .line 187
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mLikes:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    const v5, 0x7f0802e1

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/groups/AuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    .local v1, "meetupOrganizerView":Landroid/widget/TextView;
    const v4, 0x7f0e024c

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EventFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    return-void

    .line 115
    .end local v0    # "formatter":Ljava/text/DateFormat;
    .end local v1    # "meetupOrganizerView":Landroid/widget/TextView;
    .end local v2    # "startDate":Ljava/lang/String;
    .end local v3    # "startsTime":Ljava/lang/String;
    :cond_dc
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/EventFragment;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_39
.end method
