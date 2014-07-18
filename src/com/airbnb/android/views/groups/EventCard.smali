.class public Lcom/airbnb/android/views/groups/EventCard;
.super Lcom/airbnb/android/views/groups/BaseFeedCard;
.source "EventCard.java"


# instance fields
.field private mEvent:Lcom/airbnb/android/models/groups/Event;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Event;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p3, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/groups/BaseFeedCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 19
    iput-object p3, p0, Lcom/airbnb/android/views/groups/EventCard;->mEvent:Lcom/airbnb/android/models/groups/Event;

    .line 20
    return-void
.end method


# virtual methods
.method protected onSetContent(Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 10
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 29
    check-cast p1, Lcom/airbnb/android/models/groups/Event;

    .end local p1    # "content":Lcom/airbnb/android/models/groups/BaseContent;
    iput-object p1, p0, Lcom/airbnb/android/views/groups/EventCard;->mEvent:Lcom/airbnb/android/models/groups/Event;

    .line 30
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/EventCard;->setupDefaultChrome()V

    .line 32
    const v6, 0x7f08035f

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/groups/EventCard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 33
    .local v5, "titleTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/airbnb/android/views/groups/EventCard;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Event;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v6, 0x7f080361

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/groups/EventCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    .local v1, "addressTextView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/airbnb/android/views/groups/EventCard;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Event;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_2d
    const v6, 0x7f080360

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/groups/EventCard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 41
    .local v4, "startsAtTextView":Landroid/widget/TextView;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/EventCard;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0498

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v6, p0, Lcom/airbnb/android/views/groups/EventCard;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Event;->getStartsAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "startDate":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v6, 0x7f0802e1

    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/groups/EventCard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void
.end method

.method protected onSetLayout()V
    .registers 2

    .prologue
    .line 24
    const v0, 0x7f03013c

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/EventCard;->setContentLayout(I)V

    .line 25
    return-void
.end method
