.class Lcom/airbnb/android/activities/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->handleSearchIntent(Ljava/lang/String;Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;

.field final synthetic val$intentData:Landroid/net/Uri;

.field final synthetic val$param:Ljava/lang/String;

.field final synthetic val$searchFragment:Lcom/airbnb/android/fragments/SearchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 727
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$5;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iput-object p2, p0, Lcom/airbnb/android/activities/MainActivity$5;->val$searchFragment:Lcom/airbnb/android/fragments/SearchFragment;

    iput-object p3, p0, Lcom/airbnb/android/activities/MainActivity$5;->val$param:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/android/activities/MainActivity$5;->val$intentData:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 731
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity$5;->val$searchFragment:Lcom/airbnb/android/fragments/SearchFragment;

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$5;->val$param:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity$5;->val$intentData:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/SearchFragment;->doWebIntentSearch(Ljava/lang/String;Landroid/net/Uri;)V

    .line 733
    return-void
.end method
