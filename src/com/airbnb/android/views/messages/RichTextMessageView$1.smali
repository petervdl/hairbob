.class Lcom/airbnb/android/views/messages/RichTextMessageView$1;
.super Ljava/lang/Object;
.source "RichTextMessageView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/messages/RichTextMessageView;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichTextMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/messages/RichTextMessageView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/messages/RichTextMessageView;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/views/messages/RichTextMessageView$1;->this$0:Lcom/airbnb/android/views/messages/RichTextMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView$1;->this$0:Lcom/airbnb/android/views/messages/RichTextMessageView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/messages/RichTextMessageView$1;->this$0:Lcom/airbnb/android/views/messages/RichTextMessageView;

    iget-object v1, v1, Lcom/airbnb/android/views/messages/RichTextMessageView;->mTextMessage:Lcom/airbnb/android/models/messages/RichTextMessage;

    invoke-virtual {v1}, Lcom/airbnb/android/models/messages/RichTextMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichTextMessageView$1;->this$0:Lcom/airbnb/android/views/messages/RichTextMessageView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/messages/RichTextMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0135

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    const/4 v0, 0x1

    return v0
.end method
