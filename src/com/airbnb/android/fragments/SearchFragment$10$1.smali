.class Lcom/airbnb/android/fragments/SearchFragment$10$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SearchFragment$10;->onLocationUpdated(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/SearchFragment$10;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SearchFragment$10;)V
    .registers 2

    .prologue
    .line 988
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment$10$1;->this$1:Lcom/airbnb/android/fragments/SearchFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment$10$1;->this$1:Lcom/airbnb/android/fragments/SearchFragment$10;

    iget-object v0, v0, Lcom/airbnb/android/fragments/SearchFragment$10;->this$0:Lcom/airbnb/android/fragments/SearchFragment;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "android.intent.action.SEARCH"

    # invokes: Lcom/airbnb/android/fragments/SearchFragment;->onLocationSelected(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/SearchFragment;->access$200(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void
.end method
