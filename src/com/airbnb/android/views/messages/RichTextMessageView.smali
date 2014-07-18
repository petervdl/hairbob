.class public abstract Lcom/airbnb/android/views/messages/RichTextMessageView;
.super Landroid/widget/RelativeLayout;
.source "RichTextMessageView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessageView;


# instance fields
.field mAvatarGap:Landroid/view/View;

.field mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

.field mMessageStatus:Lcom/airbnb/android/views/AirTextView;

.field mMessageText:Lcom/airbnb/android/views/AirTextView;

.field protected mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichTextMessage;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textMessage"    # Lcom/airbnb/android/models/messages/RichTextMessage;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 38
    new-instance v1, Lcom/airbnb/android/views/messages/RichTextMessageView$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/messages/RichTextMessageView$1;-><init>(Lcom/airbnb/android/views/messages/RichTextMessageView;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/messages/RichTextMessageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 46
    return-void
.end method

.method private getMessageTimestampDisplay()Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v0}, Lcom/airbnb/android/models/messages/RichTextMessage;->getSentStatus()Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->SENDING:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    if-ne v0, v1, :cond_16

    .line 86
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e06e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v1}, Lcom/airbnb/android/models/messages/RichTextMessage;->getSentDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/DateHelper;->getRelativeDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private setupAvatarThumbnail()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    iget-object v3, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/RichTextMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 93
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/HaloImageView;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    .line 97
    .local v0, "gapMargin":I
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v2}, Lcom/airbnb/android/models/messages/RichTextMessage;->getMessageType()Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->SENT_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    if-ne v2, v3, :cond_4b

    .line 100
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v5, v5, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    :goto_45
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void

    .line 102
    :cond_4b
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0, v5, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_45
.end method

.method private setupMessageStatus()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    invoke-direct {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getMessageTimestampDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public getMessage()Lcom/airbnb/android/interfaces/RichMessage;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    return-object v0
.end method

.method public populate(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 5
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 50
    move-object v1, p1

    check-cast v1, Lcom/airbnb/android/models/messages/RichTextMessage;

    iput-object v1, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    .line 52
    invoke-interface {p1}, Lcom/airbnb/android/interfaces/RichMessage;->getSentStatus()Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    move-result-object v0

    .line 53
    .local v0, "status":Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->SENDING:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    if-ne v0, v1, :cond_1f

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->renderSendingMessage()V

    .line 61
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mMessageText:Lcom/airbnb/android/views/AirTextView;

    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v2}, Lcom/airbnb/android/models/messages/RichTextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->setupCustomActions()V

    .line 64
    return-void

    .line 55
    :cond_1f
    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->RECEIVED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    if-ne v0, v1, :cond_27

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->renderReceivedMessage()V

    goto :goto_10

    .line 57
    :cond_27
    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->FAILED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    if-ne v0, v1, :cond_10

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->renderFailedMessage()V

    goto :goto_10
.end method

.method public renderFailedMessage()V
    .registers 1

    .prologue
    .line 124
    return-void
.end method

.method public renderReceivedMessage()V
    .registers 2

    .prologue
    .line 118
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->setAlpha(F)V

    .line 120
    return-void
.end method

.method public renderSendingMessage()V
    .registers 2

    .prologue
    .line 114
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->setAlpha(F)V

    .line 115
    return-void
.end method

.method protected setupCustomActions()V
    .registers 1

    .prologue
    .line 132
    return-void
.end method

.method public showAuthor(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 69
    if-eqz p1, :cond_b

    .line 70
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->setupAvatarThumbnail()V

    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->setupMessageStatus()V

    .line 77
    :goto_a
    return-void

    .line 73
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mAvatarGap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView;->mMessageStatus:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setVisibility(I)V

    goto :goto_a
.end method
