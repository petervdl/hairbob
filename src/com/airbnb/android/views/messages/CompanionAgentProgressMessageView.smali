.class public Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;
.super Landroid/widget/LinearLayout;
.source "CompanionAgentProgressMessageView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessageView;


# instance fields
.field mAgentHalo:Lcom/airbnb/android/views/HaloImageView;

.field mAgentProgressText:Lcom/airbnb/android/views/AirTextView;

.field private mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030036

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;)Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    return-object v0
.end method


# virtual methods
.method public getMessage()Lcom/airbnb/android/interfaces/RichMessage;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    return-object v0
.end method

.method public populate(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 9
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 39
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mAgentHalo:Lcom/airbnb/android/views/HaloImageView;

    iget-object v3, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0371

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mMessage:Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    invoke-virtual {v6}, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;->getAgent()Lcom/airbnb/android/models/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "progressText":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mAgentProgressText:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView$1;-><init>(Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;)V

    .line 51
    .local v0, "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v2, p0, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;->mAgentProgressText:Lcom/airbnb/android/views/AirTextView;

    invoke-static {v2, v1, v0}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 52
    return-void
.end method

.method public showAuthor(Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    .line 57
    return-void
.end method
