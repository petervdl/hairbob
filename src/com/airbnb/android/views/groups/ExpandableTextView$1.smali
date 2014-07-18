.class Lcom/airbnb/android/views/groups/ExpandableTextView$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/groups/ExpandableTextView;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/groups/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/groups/ExpandableTextView;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/airbnb/android/views/groups/ExpandableTextView$1;->this$0:Lcom/airbnb/android/views/groups/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView$1;->this$0:Lcom/airbnb/android/views/groups/ExpandableTextView;

    # getter for: Lcom/airbnb/android/views/groups/ExpandableTextView;->mFakeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/views/groups/ExpandableTextView;->access$000(Lcom/airbnb/android/views/groups/ExpandableTextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_19

    .line 40
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView$1;->this$0:Lcom/airbnb/android/views/groups/ExpandableTextView;

    # getter for: Lcom/airbnb/android/views/groups/ExpandableTextView;->mContinueReading:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/views/groups/ExpandableTextView;->access$100(Lcom/airbnb/android/views/groups/ExpandableTextView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_18
    return-void

    .line 42
    :cond_19
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ExpandableTextView$1;->this$0:Lcom/airbnb/android/views/groups/ExpandableTextView;

    # getter for: Lcom/airbnb/android/views/groups/ExpandableTextView;->mContinueReading:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/views/groups/ExpandableTextView;->access$100(Lcom/airbnb/android/views/groups/ExpandableTextView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method
