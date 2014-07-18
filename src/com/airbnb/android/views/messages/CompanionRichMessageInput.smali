.class public Lcom/airbnb/android/views/messages/CompanionRichMessageInput;
.super Landroid/widget/LinearLayout;
.source "CompanionRichMessageInput.java"


# instance fields
.field mEditText:Lcom/airbnb/android/views/AirEditTextView;

.field mLocationButton:Lcom/airbnb/android/views/ColorizedIconView;

.field private mLocationEnabled:Z

.field private mRichMessagesCallback:Lcom/airbnb/android/interfaces/RichMessagesCallback;

.field mSendButton:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301af

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationEnabled:Z

    .line 46
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setupSendButton()V

    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setupLocationButton()V

    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->setupEditTextListener()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/messages/CompanionRichMessageInput;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)Lcom/airbnb/android/interfaces/RichMessagesCallback;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/messages/CompanionRichMessageInput;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mRichMessagesCallback:Lcom/airbnb/android/interfaces/RichMessagesCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;Ljava/lang/String;)Lcom/airbnb/android/models/messages/RichTextMessage;
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/views/messages/CompanionRichMessageInput;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->createTransientRichTextMessage(Ljava/lang/String;)Lcom/airbnb/android/models/messages/RichTextMessage;

    move-result-object v0

    return-object v0
.end method

.method private createTransientRichTextMessage(Ljava/lang/String;)Lcom/airbnb/android/models/messages/RichTextMessage;
    .registers 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 99
    .local v1, "currTimeMs":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 100
    .local v6, "messageCreationDate":Ljava/util/Date;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v5

    .line 102
    .local v5, "messageAuthor":Lcom/airbnb/android/models/User;
    new-instance v0, Lcom/airbnb/android/models/messages/RichTextMessage;

    sget-object v3, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->SENT_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    sget-object v7, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->SENDING:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/models/messages/RichTextMessage;-><init>(JLcom/airbnb/android/interfaces/RichMessage$MessageType;Ljava/lang/String;Lcom/airbnb/android/models/User;Ljava/util/Date;Lcom/airbnb/android/interfaces/RichMessage$SentStatus;)V

    .line 103
    .local v0, "message":Lcom/airbnb/android/models/messages/RichTextMessage;
    return-object v0
.end method

.method private setupEditTextListener()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mEditText:Lcom/airbnb/android/views/AirEditTextView;

    new-instance v1, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$3;-><init>(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    return-void
.end method

.method private setupLocationButton()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mLocationButton:Lcom/airbnb/android/views/ColorizedIconView;

    new-instance v1, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$1;-><init>(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ColorizedIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method private setupSendButton()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mSendButton:Lcom/airbnb/android/views/AirTextView;

    new-instance v1, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/messages/CompanionRichMessageInput$2;-><init>(Lcom/airbnb/android/views/messages/CompanionRichMessageInput;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public setInputText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "inputText"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mEditText:Lcom/airbnb/android/views/AirEditTextView;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/AirEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public setRichMessagesCallback(Lcom/airbnb/android/interfaces/RichMessagesCallback;)V
    .registers 2
    .param p1, "richMessagesCallback"    # Lcom/airbnb/android/interfaces/RichMessagesCallback;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/airbnb/android/views/messages/CompanionRichMessageInput;->mRichMessagesCallback:Lcom/airbnb/android/interfaces/RichMessagesCallback;

    .line 108
    return-void
.end method
