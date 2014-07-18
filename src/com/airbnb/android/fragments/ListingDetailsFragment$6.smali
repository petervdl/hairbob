.class Lcom/airbnb/android/fragments/ListingDetailsFragment$6;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->updateHeader(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V
    .registers 2

    .prologue
    .line 429
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$6;->this$0:Lcom/airbnb/android/fragments/ListingDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ListingDetailsFragment;->clickContactHost()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->access$1100(Lcom/airbnb/android/fragments/ListingDetailsFragment;)V

    .line 434
    return-void
.end method
