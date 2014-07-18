.class public Lcom/airbnb/android/views/messages/CompanionMapMessageView;
.super Landroid/widget/RelativeLayout;
.source "CompanionMapMessageView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessageView;


# instance fields
.field mAvatarGap:Landroid/view/View;

.field mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

.field mMap:Lcom/airbnb/android/views/StaticMapView;

.field private mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

.field mMessageStatus:Lcom/airbnb/android/views/AirTextView;

.field mMessageText:Lcom/airbnb/android/views/AirTextView;

.field mRecommendationsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/CompanionMapMessage;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/airbnb/android/models/messages/CompanionMapMessage;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030037

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 48
    iput-object p2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/messages/CompanionMapMessageView;)Lcom/airbnb/android/models/messages/CompanionMapMessage;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    return-object v0
.end method

.method private getColorByIndex(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_18

    .line 159
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Only three recommendations can be displayed."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_c
    const v0, 0x7f0a000a

    .line 157
    :goto_f
    return v0

    .line 155
    :pswitch_10
    const v0, 0x7f0a0021

    goto :goto_f

    .line 157
    :pswitch_14
    const v0, 0x7f0a0013

    goto :goto_f

    .line 151
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method private getMessageTimestampDisplay()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v1}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeRecommendationView(Lcom/airbnb/android/models/localcompanion/CompanionPlace;I)Landroid/view/View;
    .registers 9
    .param p1, "place"    # Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    .param p2, "index"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030126

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 137
    .local v1, "recommendationView":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 138
    .local v0, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getColorByIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 139
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 141
    .local v2, "size":I
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 143
    const v3, 0x7f08031f

    invoke-static {v1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 145
    const v3, 0x7f080320

    invoke-static {v1, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-object v1
.end method

.method private populateRecommendations()V
    .registers 7

    .prologue
    .line 113
    iget-object v4, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v4}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getCompanionPlaces()Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, "places":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/localcompanion/CompanionPlace;>;"
    iget-object v4, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mRecommendationsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3f

    .line 117
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    .line 118
    .local v1, "place":Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    invoke-direct {p0, v1, v0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->makeRecommendationView(Lcom/airbnb/android/models/localcompanion/CompanionPlace;I)Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, "recommendationView":Landroid/view/View;
    new-instance v4, Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;

    invoke-direct {v4, p0, v1}, Lcom/airbnb/android/views/messages/CompanionMapMessageView$1;-><init>(Lcom/airbnb/android/views/messages/CompanionMapMessageView;Lcom/airbnb/android/models/localcompanion/CompanionPlace;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_37

    .line 127
    const v4, 0x7f080321

    invoke-static {v3, v4}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_37
    iget-object v4, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mRecommendationsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 132
    .end local v1    # "place":Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    .end local v3    # "recommendationView":Landroid/view/View;
    :cond_3f
    return-void
.end method

.method private setupAgentProfileLinks()V
    .registers 6

    .prologue
    .line 164
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    new-instance v4, Lcom/airbnb/android/views/messages/CompanionMapMessageView$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView$2;-><init>(Lcom/airbnb/android/views/messages/CompanionMapMessageView;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "agentName":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getMessageText()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "messageText":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 175
    new-instance v1, Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView$3;-><init>(Lcom/airbnb/android/views/messages/CompanionMapMessageView;)V

    .line 182
    .local v1, "linkOnClickListener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageText:Lcom/airbnb/android/views/AirTextView;

    invoke-static {v3, v2, v0, v1}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 184
    .end local v1    # "linkOnClickListener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    :cond_2a
    return-void
.end method

.method private setupMap()V
    .registers 10

    .prologue
    .line 95
    iget-object v5, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/StaticMapView;->setup()V

    .line 96
    iget-object v5, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/StaticMapView;->thaw()V

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v5, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v5}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getCompanionPlaces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_46

    .line 99
    iget-object v5, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v5}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getCompanionPlaces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    .line 101
    .local v4, "place":Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getColorByIndex(I)I

    move-result v0

    .line 102
    .local v0, "colorId":I
    invoke-virtual {v4}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "label":Ljava/lang/String;
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLat()D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLng()D

    move-result-wide v7

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 105
    .local v3, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v5, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v5, v3, v2, v0}, Lcom/airbnb/android/views/StaticMapView;->addColoredLabelMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;I)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 108
    .end local v0    # "colorId":I
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "place":Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    :cond_46
    iget-object v5, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMap:Lcom/airbnb/android/views/StaticMapView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/StaticMapView;->setScale(I)V

    .line 109
    iget-object v5, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMap:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/StaticMapView;->freeze()V

    .line 110
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/airbnb/android/interfaces/RichMessage;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    return-object v0
.end method

.method public populate(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 4
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 53
    check-cast p1, Lcom/airbnb/android/models/messages/CompanionMapMessage;

    .end local p1    # "message":Lcom/airbnb/android/interfaces/RichMessage;
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    .line 55
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageText:Lcom/airbnb/android/views/AirTextView;

    iget-object v1, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v1}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->setupMap()V

    .line 59
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->populateRecommendations()V

    .line 61
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->setupAgentProfileLinks()V

    .line 62
    return-void
.end method

.method public showAuthor(Z)V
    .registers 8
    .param p1, "show"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 66
    if-eqz p1, :cond_53

    .line 67
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/CompanionMapMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 68
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/HaloImageView;->setVisibility(I)V

    .line 69
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    .line 72
    .local v0, "gapMargin":I
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0, v5, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    invoke-direct {p0}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->getMessageTimestampDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v0    # "gapMargin":I
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_52
    return-void

    .line 79
    :cond_53
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setVisibility(I)V

    .line 80
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionMapMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    goto :goto_52
.end method
