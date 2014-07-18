.class public Lcom/airbnb/android/views/groups/ContentCard;
.super Lcom/airbnb/android/views/groups/BaseFeedCard;
.source "ContentCard.java"


# instance fields
.field private mContent:Lcom/airbnb/android/models/groups/Content;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p3, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/groups/BaseFeedCard;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 18
    iput-object p3, p0, Lcom/airbnb/android/views/groups/ContentCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 19
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .registers 2

    .prologue
    .line 23
    const v0, 0x7f03010f

    return v0
.end method

.method protected onSetContent(Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 6
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 33
    check-cast p1, Lcom/airbnb/android/models/groups/Content;

    .end local p1    # "content":Lcom/airbnb/android/models/groups/BaseContent;
    iput-object p1, p0, Lcom/airbnb/android/views/groups/ContentCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentCard;->setupDefaultChrome()V

    .line 35
    const v3, 0x7f08035d

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/groups/ContentCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36
    .local v2, "titleTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/airbnb/android/views/groups/ContentCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Content;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v3, 0x7f08035e

    invoke-virtual {p0, v3}, Lcom/airbnb/android/views/groups/ContentCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, "bodyTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/airbnb/android/views/groups/ContentCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Content;->hasBody()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 40
    iget-object v3, p0, Lcom/airbnb/android/views/groups/ContentCard;->mContent:Lcom/airbnb/android/models/groups/Content;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Content;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "html":Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    .end local v1    # "html":Ljava/lang/String;
    :goto_47
    return-void

    .line 44
    :cond_48
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47
.end method

.method protected onSetLayout()V
    .registers 2

    .prologue
    .line 28
    const v0, 0x7f03013a

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ContentCard;->setContentLayout(I)V

    .line 29
    return-void
.end method
