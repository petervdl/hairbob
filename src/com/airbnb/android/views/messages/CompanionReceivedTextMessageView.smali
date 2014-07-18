.class public Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;
.super Lcom/airbnb/android/views/messages/RichReceivedTextMessageView;
.source "CompanionReceivedTextMessageView.java"


# instance fields
.field private mAboutMe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textMessage"    # Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/messages/RichReceivedTextMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichTextMessage;)V

    .line 17
    invoke-virtual {p2}, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;->getAboutMe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;->mAboutMe:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;->mAboutMe:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public populate(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/airbnb/android/views/messages/RichReceivedTextMessageView;->populate(Lcom/airbnb/android/interfaces/RichMessage;)V

    .line 24
    check-cast p1, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;

    .end local p1    # "message":Lcom/airbnb/android/interfaces/RichMessage;
    invoke-virtual {p1}, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;->getAboutMe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;->mAboutMe:Ljava/lang/String;

    .line 25
    return-void
.end method

.method protected setupCustomActions()V
    .registers 6

    .prologue
    .line 29
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;->mAvatarThumbnail:Lcom/airbnb/android/views/HaloImageView;

    new-instance v4, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView$1;-><init>(Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/RichTextMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "agentName":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/RichTextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "messageText":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 40
    new-instance v1, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView$2;-><init>(Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;)V

    .line 47
    .local v1, "linkOnClickListener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;->mMessageText:Lcom/airbnb/android/views/AirTextView;

    invoke-static {v3, v2, v0, v1}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 49
    .end local v1    # "linkOnClickListener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    :cond_2a
    return-void
.end method
