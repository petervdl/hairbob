.class public Lcom/airbnb/android/loaders/HtmlFormatLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "HtmlFormatLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/text/Spanned;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARG_STRING:Ljava/lang/String; = "string"


# instance fields
.field private mSpanned:Landroid/text/Spanned;

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/airbnb/android/loaders/HtmlFormatLoader;->mString:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/text/Spanned;)V
    .registers 2
    .param p1, "data"    # Landroid/text/Spanned;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/loaders/HtmlFormatLoader;->mSpanned:Landroid/text/Spanned;

    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Landroid/text/Spanned;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/loaders/HtmlFormatLoader;->deliverResult(Landroid/text/Spanned;)V

    return-void
.end method

.method public loadInBackground()Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/loaders/HtmlFormatLoader;->mString:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/loaders/HtmlFormatLoader;->mSpanned:Landroid/text/Spanned;

    .line 40
    iget-object v0, p0, Lcom/airbnb/android/loaders/HtmlFormatLoader;->mSpanned:Landroid/text/Spanned;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/android/loaders/HtmlFormatLoader;->loadInBackground()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/loaders/HtmlFormatLoader;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_a

    .line 25
    iget-object v0, p0, Lcom/airbnb/android/loaders/HtmlFormatLoader;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/loaders/HtmlFormatLoader;->deliverResult(Landroid/text/Spanned;)V

    .line 29
    :goto_9
    return-void

    .line 27
    :cond_a
    invoke-virtual {p0}, Lcom/airbnb/android/loaders/HtmlFormatLoader;->forceLoad()V

    goto :goto_9
.end method
