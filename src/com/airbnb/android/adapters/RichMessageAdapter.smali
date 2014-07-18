.class public Lcom/airbnb/android/adapters/RichMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "RichMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/RichMessageAdapter$1;
    }
.end annotation


# instance fields
.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/RichMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/RichMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/interfaces/RichMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/airbnb/android/adapters/RichMessageAdapter;->mMessages:Ljava/util/List;

    .line 33
    return-void
.end method

.method private shouldShowAvatar(I)Z
    .registers 5
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    .line 115
    :cond_8
    :goto_8
    return v0

    .line 105
    :cond_9
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_8

    .line 108
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getItem(I)Lcom/airbnb/android/interfaces/RichMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/RichMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 111
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getItem(I)Lcom/airbnb/android/interfaces/RichMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/RichMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getItem(I)Lcom/airbnb/android/interfaces/RichMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/airbnb/android/interfaces/RichMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/User;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 115
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addMessage(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/adapters/RichMessageAdapter;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/RichMessageAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/adapters/RichMessageAdapter;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/airbnb/android/interfaces/RichMessage;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/adapters/RichMessageAdapter;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/RichMessage;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getItem(I)Lcom/airbnb/android/interfaces/RichMessage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/android/adapters/RichMessageAdapter;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/RichMessage;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/RichMessage;->getMessageType()Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/airbnb/android/adapters/RichMessageAdapter;->mMessages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/RichMessage;

    .line 54
    .local v0, "message":Lcom/airbnb/android/interfaces/RichMessage;
    invoke-static {}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->values()[Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->getItemViewType(I)I

    move-result v3

    aget-object v1, v2, v3

    .line 56
    .local v1, "messageType":Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    if-nez p2, :cond_45

    .line 57
    sget-object v2, Lcom/airbnb/android/adapters/RichMessageAdapter$1;->$SwitchMap$com$airbnb$android$interfaces$RichMessage$MessageType:[I

    invoke-virtual {v1}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_9e

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized view type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :pswitch_39
    new-instance p2, Lcom/airbnb/android/views/messages/RichSentTextMessageView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-direct {p2, v3, v2}, Lcom/airbnb/android/views/messages/RichSentTextMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichTextMessage;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_45
    :goto_45
    move-object v2, p2

    .line 81
    check-cast v2, Lcom/airbnb/android/interfaces/RichMessageView;

    invoke-interface {v2, v0}, Lcom/airbnb/android/interfaces/RichMessageView;->populate(Lcom/airbnb/android/interfaces/RichMessage;)V

    .line 84
    invoke-interface {v0}, Lcom/airbnb/android/interfaces/RichMessage;->getAuthor()Lcom/airbnb/android/models/User;

    move-result-object v2

    if-eqz v2, :cond_5b

    move-object v2, p2

    .line 85
    check-cast v2, Lcom/airbnb/android/interfaces/RichMessageView;

    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/RichMessageAdapter;->shouldShowAvatar(I)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/RichMessageView;->showAuthor(Z)V

    .line 88
    :cond_5b
    return-object p2

    .line 62
    :pswitch_5c
    new-instance p2, Lcom/airbnb/android/views/messages/RichReceivedTextMessageView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-direct {p2, v3, v2}, Lcom/airbnb/android/views/messages/RichReceivedTextMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichTextMessage;)V

    .line 63
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_45

    .line 65
    :pswitch_69
    new-instance p2, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;

    invoke-direct {p2, v3, v2}, Lcom/airbnb/android/views/messages/CompanionReceivedTextMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/CompanionReceivedTextMessage;)V

    .line 66
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_45

    .line 68
    :pswitch_76
    new-instance p2, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/airbnb/android/models/messages/RichStatusMessage;

    invoke-direct {p2, v3, v2}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichStatusMessage;)V

    .line 69
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_45

    .line 71
    :pswitch_83
    new-instance p2, Lcom/airbnb/android/views/messages/CompanionMapMessageView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/airbnb/android/models/messages/CompanionMapMessage;

    invoke-direct {p2, v3, v2}, Lcom/airbnb/android/views/messages/CompanionMapMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/CompanionMapMessage;)V

    .line 72
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_45

    .line 74
    :pswitch_90
    new-instance p2, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v0

    check-cast v2, Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;

    invoke-direct {p2, v3, v2}, Lcom/airbnb/android/views/messages/CompanionAgentProgressMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/CompanionAgentProgressMessage;)V

    .line 75
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_45

    .line 57
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_39
        :pswitch_5c
        :pswitch_69
        :pswitch_76
        :pswitch_83
        :pswitch_90
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 126
    invoke-static {}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->values()[Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public removeMessage(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 3
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/adapters/RichMessageAdapter;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/RichMessageAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
