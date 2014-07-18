.class public Lcom/airbnb/android/views/messages/RichReceivedTextMessageView;
.super Lcom/airbnb/android/views/messages/RichTextMessageView;
.source "RichReceivedTextMessageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichTextMessage;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textMessage"    # Lcom/airbnb/android/models/messages/RichTextMessage;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/messages/RichTextMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichTextMessage;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .registers 2

    .prologue
    .line 16
    const v0, 0x7f0301b0

    return v0
.end method
