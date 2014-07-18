.class Lcom/airbnb/android/fragments/ContactsFragment$5;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactsFragment;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactsFragment;II)V
    .registers 4

    .prologue
    .line 466
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactsFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    iput p2, p0, Lcom/airbnb/android/fragments/ContactsFragment$5;->val$groupPosition:I

    iput p3, p0, Lcom/airbnb/android/fragments/ContactsFragment$5;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactsFragment$5;->this$0:Lcom/airbnb/android/fragments/ContactsFragment;

    iget v1, p0, Lcom/airbnb/android/fragments/ContactsFragment$5;->val$groupPosition:I

    iget v2, p0, Lcom/airbnb/android/fragments/ContactsFragment$5;->val$childPosition:I

    # invokes: Lcom/airbnb/android/fragments/ContactsFragment;->handleRecommendedChildClick(Landroid/view/View;II)Z
    invoke-static {v0, p1, v1, v2}, Lcom/airbnb/android/fragments/ContactsFragment;->access$400(Lcom/airbnb/android/fragments/ContactsFragment;Landroid/view/View;II)Z

    .line 470
    return-void
.end method
